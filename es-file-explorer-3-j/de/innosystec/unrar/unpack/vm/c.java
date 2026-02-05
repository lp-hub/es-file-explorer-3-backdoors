package de.innosystec.unrar.unpack.vm;

/* loaded from: classes.dex */
/* synthetic */ class c {

    /* renamed from: a, reason: collision with root package name */
    static final /* synthetic */ int[] f3438a;

    /* renamed from: b, reason: collision with root package name */
    static final /* synthetic */ int[] f3439b = new int[VMStandardFilters.values().length];

    static {
        try {
            f3439b[VMStandardFilters.VMSF_E8.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            f3439b[VMStandardFilters.VMSF_E8E9.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            f3439b[VMStandardFilters.VMSF_ITANIUM.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            f3439b[VMStandardFilters.VMSF_DELTA.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        try {
            f3439b[VMStandardFilters.VMSF_RGB.ordinal()] = 5;
        } catch (NoSuchFieldError e5) {
        }
        try {
            f3439b[VMStandardFilters.VMSF_AUDIO.ordinal()] = 6;
        } catch (NoSuchFieldError e6) {
        }
        try {
            f3439b[VMStandardFilters.VMSF_UPCASE.ordinal()] = 7;
        } catch (NoSuchFieldError e7) {
        }
        f3438a = new int[VMCommands.values().length];
        try {
            f3438a[VMCommands.VM_MOV.ordinal()] = 1;
        } catch (NoSuchFieldError e8) {
        }
        try {
            f3438a[VMCommands.VM_MOVB.ordinal()] = 2;
        } catch (NoSuchFieldError e9) {
        }
        try {
            f3438a[VMCommands.VM_MOVD.ordinal()] = 3;
        } catch (NoSuchFieldError e10) {
        }
        try {
            f3438a[VMCommands.VM_CMP.ordinal()] = 4;
        } catch (NoSuchFieldError e11) {
        }
        try {
            f3438a[VMCommands.VM_CMPB.ordinal()] = 5;
        } catch (NoSuchFieldError e12) {
        }
        try {
            f3438a[VMCommands.VM_CMPD.ordinal()] = 6;
        } catch (NoSuchFieldError e13) {
        }
        try {
            f3438a[VMCommands.VM_ADD.ordinal()] = 7;
        } catch (NoSuchFieldError e14) {
        }
        try {
            f3438a[VMCommands.VM_ADDB.ordinal()] = 8;
        } catch (NoSuchFieldError e15) {
        }
        try {
            f3438a[VMCommands.VM_ADDD.ordinal()] = 9;
        } catch (NoSuchFieldError e16) {
        }
        try {
            f3438a[VMCommands.VM_SUB.ordinal()] = 10;
        } catch (NoSuchFieldError e17) {
        }
        try {
            f3438a[VMCommands.VM_SUBB.ordinal()] = 11;
        } catch (NoSuchFieldError e18) {
        }
        try {
            f3438a[VMCommands.VM_SUBD.ordinal()] = 12;
        } catch (NoSuchFieldError e19) {
        }
        try {
            f3438a[VMCommands.VM_JZ.ordinal()] = 13;
        } catch (NoSuchFieldError e20) {
        }
        try {
            f3438a[VMCommands.VM_JNZ.ordinal()] = 14;
        } catch (NoSuchFieldError e21) {
        }
        try {
            f3438a[VMCommands.VM_INC.ordinal()] = 15;
        } catch (NoSuchFieldError e22) {
        }
        try {
            f3438a[VMCommands.VM_INCB.ordinal()] = 16;
        } catch (NoSuchFieldError e23) {
        }
        try {
            f3438a[VMCommands.VM_INCD.ordinal()] = 17;
        } catch (NoSuchFieldError e24) {
        }
        try {
            f3438a[VMCommands.VM_DEC.ordinal()] = 18;
        } catch (NoSuchFieldError e25) {
        }
        try {
            f3438a[VMCommands.VM_DECB.ordinal()] = 19;
        } catch (NoSuchFieldError e26) {
        }
        try {
            f3438a[VMCommands.VM_DECD.ordinal()] = 20;
        } catch (NoSuchFieldError e27) {
        }
        try {
            f3438a[VMCommands.VM_JMP.ordinal()] = 21;
        } catch (NoSuchFieldError e28) {
        }
        try {
            f3438a[VMCommands.VM_XOR.ordinal()] = 22;
        } catch (NoSuchFieldError e29) {
        }
        try {
            f3438a[VMCommands.VM_AND.ordinal()] = 23;
        } catch (NoSuchFieldError e30) {
        }
        try {
            f3438a[VMCommands.VM_OR.ordinal()] = 24;
        } catch (NoSuchFieldError e31) {
        }
        try {
            f3438a[VMCommands.VM_TEST.ordinal()] = 25;
        } catch (NoSuchFieldError e32) {
        }
        try {
            f3438a[VMCommands.VM_JS.ordinal()] = 26;
        } catch (NoSuchFieldError e33) {
        }
        try {
            f3438a[VMCommands.VM_JNS.ordinal()] = 27;
        } catch (NoSuchFieldError e34) {
        }
        try {
            f3438a[VMCommands.VM_JB.ordinal()] = 28;
        } catch (NoSuchFieldError e35) {
        }
        try {
            f3438a[VMCommands.VM_JBE.ordinal()] = 29;
        } catch (NoSuchFieldError e36) {
        }
        try {
            f3438a[VMCommands.VM_JA.ordinal()] = 30;
        } catch (NoSuchFieldError e37) {
        }
        try {
            f3438a[VMCommands.VM_JAE.ordinal()] = 31;
        } catch (NoSuchFieldError e38) {
        }
        try {
            f3438a[VMCommands.VM_PUSH.ordinal()] = 32;
        } catch (NoSuchFieldError e39) {
        }
        try {
            f3438a[VMCommands.VM_POP.ordinal()] = 33;
        } catch (NoSuchFieldError e40) {
        }
        try {
            f3438a[VMCommands.VM_CALL.ordinal()] = 34;
        } catch (NoSuchFieldError e41) {
        }
        try {
            f3438a[VMCommands.VM_NOT.ordinal()] = 35;
        } catch (NoSuchFieldError e42) {
        }
        try {
            f3438a[VMCommands.VM_SHL.ordinal()] = 36;
        } catch (NoSuchFieldError e43) {
        }
        try {
            f3438a[VMCommands.VM_SHR.ordinal()] = 37;
        } catch (NoSuchFieldError e44) {
        }
        try {
            f3438a[VMCommands.VM_SAR.ordinal()] = 38;
        } catch (NoSuchFieldError e45) {
        }
        try {
            f3438a[VMCommands.VM_NEG.ordinal()] = 39;
        } catch (NoSuchFieldError e46) {
        }
        try {
            f3438a[VMCommands.VM_NEGB.ordinal()] = 40;
        } catch (NoSuchFieldError e47) {
        }
        try {
            f3438a[VMCommands.VM_NEGD.ordinal()] = 41;
        } catch (NoSuchFieldError e48) {
        }
        try {
            f3438a[VMCommands.VM_PUSHA.ordinal()] = 42;
        } catch (NoSuchFieldError e49) {
        }
        try {
            f3438a[VMCommands.VM_POPA.ordinal()] = 43;
        } catch (NoSuchFieldError e50) {
        }
        try {
            f3438a[VMCommands.VM_PUSHF.ordinal()] = 44;
        } catch (NoSuchFieldError e51) {
        }
        try {
            f3438a[VMCommands.VM_POPF.ordinal()] = 45;
        } catch (NoSuchFieldError e52) {
        }
        try {
            f3438a[VMCommands.VM_MOVZX.ordinal()] = 46;
        } catch (NoSuchFieldError e53) {
        }
        try {
            f3438a[VMCommands.VM_MOVSX.ordinal()] = 47;
        } catch (NoSuchFieldError e54) {
        }
        try {
            f3438a[VMCommands.VM_XCHG.ordinal()] = 48;
        } catch (NoSuchFieldError e55) {
        }
        try {
            f3438a[VMCommands.VM_MUL.ordinal()] = 49;
        } catch (NoSuchFieldError e56) {
        }
        try {
            f3438a[VMCommands.VM_DIV.ordinal()] = 50;
        } catch (NoSuchFieldError e57) {
        }
        try {
            f3438a[VMCommands.VM_ADC.ordinal()] = 51;
        } catch (NoSuchFieldError e58) {
        }
        try {
            f3438a[VMCommands.VM_SBB.ordinal()] = 52;
        } catch (NoSuchFieldError e59) {
        }
        try {
            f3438a[VMCommands.VM_RET.ordinal()] = 53;
        } catch (NoSuchFieldError e60) {
        }
        try {
            f3438a[VMCommands.VM_STANDARD.ordinal()] = 54;
        } catch (NoSuchFieldError e61) {
        }
        try {
            f3438a[VMCommands.VM_PRINT.ordinal()] = 55;
        } catch (NoSuchFieldError e62) {
        }
    }
}
