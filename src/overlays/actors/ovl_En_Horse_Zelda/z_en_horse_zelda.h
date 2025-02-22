#pragma once
#define Z_EN_HORSE_ZELDA_H

#include "ultra64.h"
#include "global.h"

struct EnHorseZelda;

typedef void (*EnHorseZeldaActionFunc)(struct EnHorseZelda*, GlobalContext*);



struct unknownStruct {
    /* 0x0 */ Vec3s unk_0;
    /* 0x6 */ u8 unk_6;
};
struct EnHorseZelda {

    /* 0x0000 */ Actor actor;
    /* 0x014C */ s32 action;
    /* 0x0150 */ s32 animationIndex;
    /* 0x0154 */ PSkinAwb skin;
    /* 0x01E4 */ char unk_1E4[0x8];
    /* 0x01EC */ s32 unk_1EC;
    /* 0x01F0 */ char unk_1F0[0x4];
    /* 0x01F4 */ f32 unk_1F4;
    /* 0x01F8 */ char unk_1F8[0x4];
    /* 0x01FC */ ColliderCylinder colliderCylinder;
    /* 0x0248 */ ColliderJntSph colliderSphere;
    /* 0x0268 */ ColliderJntSphElement colliderSphereItem;
}; 


