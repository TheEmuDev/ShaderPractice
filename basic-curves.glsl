#ifdef GL_ES
precision mediump float;
#endif

#define PI 3.14159265359

uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;

// Plot a line on Y using a value between 0.0 - 1.0
float plot(vec2 st, float pct) {
    return smoothstep(pct-0.01, pct, st.y) -
           smoothstep(pct, pct+0.01, st.y);
}

/**
 * Transformations:    f(x) = 5x
 *    move 5 units right:    f(x) = 5(x + 5)
 *    move 5 units up:       f(x) = 5x + 5
 */


void main() {
    vec2 st = gl_FragCoord.xy/u_resolution;

    // float y = 3.0 * pow(st.x - 0.5, 2.0) + 2.0 * pow(st.y, 2.0);  // CIRCLE
    
    // float y = 1.0 - pow(abs(st.x + u_time - 1.5), 0.5);
    // float y = 1.0 - pow(abs(st.x + u_time - 1.5), 1.);
    // float y = 1.0 - pow(abs(st.x + u_time - 1.5), 1.5);
    // float y = 1.0 - pow(abs(st.x + u_time - 1.5), 2.0);
    // float y = 1.0 - pow(abs(st.x + u_time - 1.5), 2.5);
    // float y = 1.0 - pow(abs(st.x + u_time - 1.5), 3.0);
    // float y = 1.0 - pow(abs(st.x + u_time - 1.5), 3.5);

    // float y = pow(cos((PI * st.x + u_time - 1.5)/2.0), 0.5);
    // float y = pow(cos((PI * st.x + u_time - 5.0)/2.0), 1.0);
    // float y = pow(cos((PI * st.x + u_time - 1.5)/2.0), 1.5);
    // float y = pow(cos((PI * st.x + u_time - 1.5)/2.0), 2.0);
    // float y = pow(cos((PI * st.x + u_time - 1.5)/2.0), 2.5);
    // float y = pow(cos((PI * st.x + u_time - 1.5)/2.0), 3.0);
    // float y = pow(cos((PI * st.x + u_time - 1.5)/2.0), 3.5);
    
    // float y = 1.0 - pow(abs(sin(PI * st.x + u_time / 2.0 - 1.5)), 0.5);
    // float y = 1.0 - pow(abs(sin(PI * st.x + u_time / 2.0 - 1.5)), 1.0);
    // float y = 1.0 - pow(abs(sin(PI * st.x + u_time / 2.0 - 1.5)), 1.5);
    // float y = 1.0 - pow(abs(sin(PI * st.x + u_time / 2.0 - 1.5)), 2.0);
    // float y = 1.0 - pow(abs(sin(PI * st.x + u_time / 2.0 - 1.5)), 2.5);
    // float y = 1.0 - pow(abs(sin(PI * st.x + u_time / 2.0 - 1.5)), 3.0);
    // float y = 1.0 - pow(abs(sin(PI * st.x + u_time / 2.0 - 1.5)), 3.5);

    // float y = pow(min(cos(PI * st.x / 2.0), 1.0 - abs(st.x)), 0.5);
    // float y = pow(min(cos(PI * st.x / 2.0), 1.0 - abs(st.x)), 1.0);
    // float y = pow(min(cos(PI * st.x / 2.0), 1.0 - abs(st.x)), 1.5);
    // float y = pow(min(cos(PI * st.x / 2.0), 1.0 - abs(st.x)), 2.0);
    // float y = pow(min(cos(PI * st.x / 2.0), 1.0 - abs(st.x)), 2.5);
    // float y = pow(min(cos(PI * st.x / 2.0), 1.0 - abs(st.x)), 3.0);
    // float y = pow(min(cos(PI * st.x / 2.0), 1.0 - abs(st.x)), 3.5);
    
    // float y = 1.0 - pow(max(0.0, abs(st.x ) * 2.0 - 1.0), 0.5);
    // float y = 1.0 - pow(max(0.0, abs(st.x ) * 2.0 - 1.0), 1.0);
    // float y = 1.0 - pow(max(0.0, abs(st.x ) * 2.0 - 1.0), 1.5);
    // float y = 1.0 - pow(max(0.0, abs(st.x ) * 2.0 - 1.0), 2.0);
    // float y = 1.0 - pow(max(0.0, abs(st.x ) * 2.0 - 1.0), 2.5);
    // float y = 1.0 - pow(max(0.0, abs(st.x ) * 2.0 - 1.0), 3.0);
    float y = 1.0 - pow(max(0.0, abs(st.x ) * 2.0 - 1.0), 3.5);
    
    vec3 color = vec3(y);

    // Plot a line
    float pct = plot(st, y);
    color = (1.0-pct) * color + pct * vec3(0.0, 1.0, 0.0);

    gl_FragColor = vec4(color, 1.0);
}