#version 110

#moj_import <fog.glsl>
#moj_import <light.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;

uniform sampler2D Sampler0;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;
uniform mat3 IViewRotMat;
uniform int FogShape;
uniform vec2 ScreenSize;

out float vertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;

#define ACTIONBAR_OFFSET 64

// Function to convert a vertical ascent into a ID.
float get_id(float offset) {
    if (offset <= 0)
        return 0;
    return trunc(offset/1000);
}


void main() {
    vec3 pos = Position;

    vertexDistance = fog_distance(ModelViewMat, IViewRotMat * Position, FogShape);
    vertexColor = Color;
    texCoord0 = UV0;

    vec2 pixel = vec2(ProjMat[0][0], ProjMat[1][1]) / 2.0;
    int guiScale = int(round(pixel.x / (1 / ScreenSize.x)));
    vec2 guiSize = ScreenSize / guiScale;

    float id = get_id((round(guiSize.y - Position.y + ACTIONBAR_OFFSET)) * -1);
    
    // Detect if GUI text.
    if (id > 99 && Color.a != 0.0) {
        float yOffset = 0;
        float xOffset = 0;
        int layer = 0;
        bool outlined = false;

        switch (int(id)) {
            case 100:
                xOffset = int(guiSize.x * (-1.5/100))-5;
                yOffset = int(guiSize.y * (50.0/100))-28;
                layer = 1;
                break;
            case 101:
                xOffset = int(guiSize.x * (-1.5/100));
                yOffset = int(guiSize.y * (50.0/100))-27;
                layer = 2;
                break;
            case 102:
                xOffset = int(guiSize.x * (-1.5/100))-2;
                yOffset = int(guiSize.y * (50.0/100))-42;
                layer = 3;
                break;
            case 103:
                xOffset = int(guiSize.x * (-1.5/100))-2;
                yOffset = int(guiSize.y * (50.0/100))-39;
                layer = 3;
                break;
            case 104:
                xOffset = int(guiSize.x * (-2.0/100))-6;
                yOffset = int(guiSize.y * (50.0/100))-3;
                layer = 1;
                break;
            case 105:
                xOffset = int(guiSize.x * (-2.0/100));
                yOffset = int(guiSize.y * (50.0/100));
                layer = 2;
                break;
            case 106:
                xOffset = int(guiSize.x * (-2.0/100))-65;
                yOffset = int(guiSize.y * (50.0/100))-15;
                layer = 3;
                break;
            case 107:
                xOffset = int(guiSize.x * (-2.0/100))-65;
                yOffset = int(guiSize.y * (50.0/100))-12;
                layer = 3;
                break;
            case 108:
                xOffset = int(guiSize.x * (-1.0/100));
                yOffset = int(guiSize.y * (50.0/100))+40;
                layer = 1;
                break;
            case 109:
                xOffset = int(guiSize.x * (-1.0/100));
                yOffset = int(guiSize.y * (50.0/100))+40;
                layer = 2;
                break;
            case 110:
                xOffset = int(guiSize.x * (-1.0/100))-70;
                yOffset = int(guiSize.y * (50.0/100))+10;
                layer = 3;
                break;
            case 111:
                xOffset = int(guiSize.x * (-1.0/100))-70;
                yOffset = int(guiSize.y * (50.0/100))+13;
                layer = 3;
                break;
            case 112:
                xOffset = int(guiSize.x * (-50.0/100))-10;
                yOffset = int(guiSize.y * (0.0/100))+65;
                layer = 1;
                break;
            case 113:
                xOffset = int(guiSize.x * (-50.0/100))-10;
                yOffset = int(guiSize.y * (0.0/100))+65;
                layer = 2;
                break;
            case 114:
                xOffset = int(guiSize.x * (-50.0/100))-5;
                yOffset = int(guiSize.y * (0.0/100))+67;
                layer = 3;
                break;
            case 115:
                xOffset = int(guiSize.x * (-50.0/100))+10;
                yOffset = int(guiSize.y * (0.0/100))+65;
                layer = 1;
                break;
            case 116:
                xOffset = int(guiSize.x * (-50.0/100))+10;
                yOffset = int(guiSize.y * (0.0/100))+65;
                layer = 2;
                break;
            case 117:
                xOffset = int(guiSize.x * (-50.0/100))+15;
                yOffset = int(guiSize.y * (0.0/100))+67;
                layer = 3;
                break;
            case 118:
                xOffset = int(guiSize.x * (-50.0/100))-10;
                yOffset = int(guiSize.y * (0.0/100))+55;
                layer = 1;
                break;
            case 119:
                xOffset = int(guiSize.x * (-50.0/100))-10;
                yOffset = int(guiSize.y * (0.0/100))+55;
                layer = 2;
                break;
            case 120:
                xOffset = int(guiSize.x * (-50.0/100))-5;
                yOffset = int(guiSize.y * (0.0/100))+57;
                layer = 3;
                break;
            case 121:
                xOffset = int(guiSize.x * (-50.0/100))+10;
                yOffset = int(guiSize.y * (0.0/100))+55;
                layer = 1;
                break;
            case 122:
                xOffset = int(guiSize.x * (-50.0/100))+10;
                yOffset = int(guiSize.y * (0.0/100))+55;
                layer = 2;
                break;
            case 123:
                xOffset = int(guiSize.x * (-50.0/100))+15;
                yOffset = int(guiSize.y * (0.0/100))+57;
                layer = 3;
                break;
            case 124:
                xOffset = int(guiSize.x * (-0.0/100))-25;
                yOffset = int(guiSize.y * (100.0/100))-25;
                layer = 1;
                break;
            case 125:
                xOffset = int(guiSize.x * (-0.0/100))-27;
                yOffset = int(guiSize.y * (100.0/100))-37;
                layer = 2;
                break;
            case 126:
                xOffset = int(guiSize.x * (-0.0/100))-28;
                yOffset = int(guiSize.y * (100.0/100))-45;
                layer = 3;
                outlined = true;
                break;
            case 127:
                xOffset = int(guiSize.x * (-0.0/100))-28;
                yOffset = int(guiSize.y * (100.0/100))-42;
                layer = 3;
                outlined = true;
                break;
            case 128:
                xOffset = int(guiSize.x * (-0.0/100))-27;
                yOffset = int(guiSize.y * (100.0/100))-31;
                layer = 4;
                break;
            case 129:
                xOffset = int(guiSize.x * (-0.0/100))-28;
                yOffset = int(guiSize.y * (100.0/100))-21;
                layer = 5;
                outlined = true;
                break;
            case 130:
                xOffset = int(guiSize.x * (-0.0/100))-28;
                yOffset = int(guiSize.y * (100.0/100))-18;
                layer = 5;
                outlined = true;
                break;
            case 131:
                xOffset = int(guiSize.x * (-50.0/100));
                yOffset = int(guiSize.y * (0.0/100))+85;
                layer = 1;
                outlined = true;
                break;
            case 132:
                xOffset = int(guiSize.x * (-50.0/100));
                yOffset = int(guiSize.y * (0.0/100))+88;
                layer = 1;
                outlined = true;
                break;
            case 133:
                xOffset = int(guiSize.x * (-50.0/100));
                yOffset = int(guiSize.y * (0.0/100))+75;
                layer = 1;
                outlined = true;
                break;
            case 134:
                xOffset = int(guiSize.x * (-50.0/100));
                yOffset = int(guiSize.y * (0.0/100))+78;
                layer = 1;
                outlined = true;
                break;
            case 135:
                xOffset = int(guiSize.x * (-50.0/100));
                yOffset = int(guiSize.y * (0.0/100))+65;
                layer = 1;
                outlined = true;
                break;
            case 136:
                xOffset = int(guiSize.x * (-50.0/100));
                yOffset = int(guiSize.y * (0.0/100))+68;
                layer = 1;
                outlined = true;
                break;
            case 137:
                xOffset = int(guiSize.x * (-100.0/100))+20;
                yOffset = int(guiSize.y * (100.0/100))-20;
                layer = 1;
                break;
            case 138:
                xOffset = int(guiSize.x * (-100.0/100))-80;
                yOffset = int(guiSize.y * (100.0/100))-22;
                layer = 2;
                outlined = true;
                break;
            case 139:
                xOffset = int(guiSize.x * (-100.0/100))-80;
                yOffset = int(guiSize.y * (100.0/100))-19;
                layer = 2;
                outlined = true;
                break;
            case 140:
                xOffset = int(guiSize.x * (-100.0/100))-60;
                yOffset = int(guiSize.y * (100.0/100))-22;
                layer = 3;
                outlined = true;
                break;
            case 141:
                xOffset = int(guiSize.x * (-100.0/100))-60;
                yOffset = int(guiSize.y * (100.0/100))-19;
                layer = 3;
                outlined = true;
                break;
            case 142:
                xOffset = int(guiSize.x * (-100.0/100))-66;
                yOffset = int(guiSize.y * (100.0/100))-22;
                layer = 4;
                break;
            case 143:
                xOffset = int(guiSize.x * (-100.0/100))+20;
                yOffset = int(guiSize.y * (100.0/100))-40;
                layer = 1;
                break;
            case 144:
                xOffset = int(guiSize.x * (-100.0/100))-80;
                yOffset = int(guiSize.y * (100.0/100))-42;
                layer = 2;
                outlined = true;
                break;
            case 145:
                xOffset = int(guiSize.x * (-100.0/100))-80;
                yOffset = int(guiSize.y * (100.0/100))-39;
                layer = 2;
                outlined = true;
                break;
            case 146:
                xOffset = int(guiSize.x * (-100.0/100))-60;
                yOffset = int(guiSize.y * (100.0/100))-42;
                layer = 3;
                outlined = true;
                break;
            case 147:
                xOffset = int(guiSize.x * (-100.0/100))-60;
                yOffset = int(guiSize.y * (100.0/100))-39;
                layer = 3;
                outlined = true;
                break;
            case 148:
                xOffset = int(guiSize.x * (-100.0/100))-66;
                yOffset = int(guiSize.y * (100.0/100))-42;
                layer = 4;
                break;
            case 149:
                xOffset = int(guiSize.x * (-100.0/100))+20;
                yOffset = int(guiSize.y * (100.0/100))-60;
                layer = 1;
                break;
            case 150:
                xOffset = int(guiSize.x * (-100.0/100))-80;
                yOffset = int(guiSize.y * (100.0/100))-62;
                layer = 2;
                outlined = true;
                break;
            case 151:
                xOffset = int(guiSize.x * (-100.0/100))-80;
                yOffset = int(guiSize.y * (100.0/100))-59;
                layer = 2;
                outlined = true;
                break;
            case 152:
                xOffset = int(guiSize.x * (-100.0/100))-60;
                yOffset = int(guiSize.y * (100.0/100))-62;
                layer = 3;
                outlined = true;
                break;
            case 153:
                xOffset = int(guiSize.x * (-100.0/100))-60;
                yOffset = int(guiSize.y * (100.0/100))-59;
                layer = 3;
                outlined = true;
                break;
            case 154:
                xOffset = int(guiSize.x * (-100.0/100))-66;
                yOffset = int(guiSize.y * (100.0/100))-62;
                layer = 4;
                break;
            case 155:
                xOffset = int(guiSize.x * (-100.0/100))+20;
                yOffset = int(guiSize.y * (100.0/100))-80;
                layer = 1;
                break;
            case 156:
                xOffset = int(guiSize.x * (-100.0/100))-80;
                yOffset = int(guiSize.y * (100.0/100))-82;
                layer = 2;
                outlined = true;
                break;
            case 157:
                xOffset = int(guiSize.x * (-100.0/100))-80;
                yOffset = int(guiSize.y * (100.0/100))-79;
                layer = 2;
                outlined = true;
                break;
            case 158:
                xOffset = int(guiSize.x * (-100.0/100))-60;
                yOffset = int(guiSize.y * (100.0/100))-82;
                layer = 3;
                outlined = true;
                break;
            case 159:
                xOffset = int(guiSize.x * (-100.0/100))-60;
                yOffset = int(guiSize.y * (100.0/100))-79;
                layer = 3;
                outlined = true;
                break;
            case 160:
                xOffset = int(guiSize.x * (-100.0/100))-66;
                yOffset = int(guiSize.y * (100.0/100))-82;
                layer = 4;
                break;
            case 161:
                xOffset = int(guiSize.x * (-100.0/100))+20;
                yOffset = int(guiSize.y * (100.0/100))-100;
                layer = 1;
                break;
            case 162:
                xOffset = int(guiSize.x * (-100.0/100))-80;
                yOffset = int(guiSize.y * (100.0/100))-102;
                layer = 2;
                outlined = true;
                break;
            case 163:
                xOffset = int(guiSize.x * (-100.0/100))-80;
                yOffset = int(guiSize.y * (100.0/100))-99;
                layer = 2;
                outlined = true;
                break;
            case 164:
                xOffset = int(guiSize.x * (-100.0/100))-60;
                yOffset = int(guiSize.y * (100.0/100))-102;
                layer = 3;
                outlined = true;
                break;
            case 165:
                xOffset = int(guiSize.x * (-100.0/100))-60;
                yOffset = int(guiSize.y * (100.0/100))-99;
                layer = 3;
                outlined = true;
                break;
            case 166:
                xOffset = int(guiSize.x * (-100.0/100))-66;
                yOffset = int(guiSize.y * (100.0/100))-102;
                layer = 4;
                break;
        }

        if (Position.z != 0.0 || outlined) {
            pos.y -= (id*1000) + 500 - ACTIONBAR_OFFSET;
            pos.x -= (guiSize.x * 0.5);
            pos -= vec3(xOffset, yOffset, 0.0);
            pos.z += layer;
        }
    } 	

    gl_Position = ProjMat * ModelViewMat * vec4(pos, 1);
}
