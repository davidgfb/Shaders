void mainImage(out vec4 fragColor, in vec2 fragCoord) {
	vec2 uv = (0, (fragCoord.xy/iResolution.xy)-0.5);
    
    float profundidad=2.0+cos(iTime);
    
    vec3 ro=vec3(0, 0, -2),
         rd=vec3(uv.x*(iResolution.x/iResolution.y), uv.y, 0)-ro,
         p=vec3(sin(iTime), 0, profundidad);
    
    fragColor=vec4(smoothstep(0.1, 0.09, length(cross(p-ro, rd))/length(rd)));
}
