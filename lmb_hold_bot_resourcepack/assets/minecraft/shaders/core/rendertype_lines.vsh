
#version 330
#extension GL_ARB_separate_shader_objects : require

#include <minecraft:fog.glsl>
#include <minecraft:globals.glsl>
#include <minecraft:dynamictransforms.glsl>
#include <minecraft:projection.glsl>

layout(location = 0) in vec3 Position;
layout(location = 1) in vec4 Color;
layout(location = 2) in vec3 Normal;
layout(location = 3) in float LineWidth;

layout(location = 0) out float sphericalVertexDistance;
layout(location = 1) out float cylindricalVertexDistance;
layout(location = 2) out vec4 vertexColor;

layout(location = 3) flat out float hideLine;

// Distance threshold in blocks
const float HIDE_DISTANCE = 1.5;

const float VIEW_SHRINK = 1.0 - (1.0 / 256.0);

const mat4 VIEW_SCALE = mat4(
    VIEW_SHRINK, 0.0, 0.0, 0.0,
    0.0, VIEW_SHRINK, 0.0, 0.0,
    0.0, 0.0, VIEW_SHRINK, 0.0,
    0.0, 0.0, 0.0, 1.0
);

void main() {

    // -----------------------------------
    // Detect nearby selection outlines
    // -----------------------------------

    vec3 start = Position;
    vec3 end = Position + Normal;

    vec3 segment = end - start;

    // Closest point on the line segment
    // to the camera at (0, 0, 0)
    float t = clamp(
        -dot(start, segment) /
        max(dot(segment, segment), 0.000001),
        0.0,
        1.0
    );

    vec3 closestPoint = start + segment * t;

    float distanceToLine = length(closestPoint);

    // Detect black selection outline
    bool isSelectionOutline =
        max(Color.r, max(Color.g, Color.b)) < 0.08 &&
        abs(Color.a - 0.4) < 0.12;

    // Hide lines within 2 blocks
    hideLine = (
        distanceToLine < HIDE_DISTANCE &&
        isSelectionOutline
    ) ? 1.0 : 0.0;

    // -----------------------------------
    // Vanilla line rendering
    // -----------------------------------

    vec4 linePosStart =
        ProjMat * VIEW_SCALE *
        ModelViewMat * vec4(Position, 1.0);

    vec4 linePosEnd =
        ProjMat * VIEW_SCALE *
        ModelViewMat * vec4(Position + Normal, 1.0);

    vec3 ndc1 = linePosStart.xyz / linePosStart.w;
    vec3 ndc2 = linePosEnd.xyz / linePosEnd.w;

    vec2 lineScreenDirection =
        normalize((ndc2.xy - ndc1.xy) * ScreenSize);

    vec2 lineOffset =
        vec2(
            -lineScreenDirection.y,
             lineScreenDirection.x
        ) * LineWidth / ScreenSize;

    if (lineOffset.x < 0.0) {
        lineOffset *= -1.0;
    }

    if (gl_VertexIndex % 2 == 0) {
        gl_Position = vec4(
            (ndc1 + vec3(lineOffset, 0.0)) *
            linePosStart.w,
            linePosStart.w
        );
    } else {
        gl_Position = vec4(
            (ndc1 - vec3(lineOffset, 0.0)) *
            linePosStart.w,
            linePosStart.w
        );
    }

    sphericalVertexDistance =
        fog_spherical_distance(Position);

    cylindricalVertexDistance =
        fog_cylindrical_distance(Position);

    vertexColor = Color;
}
