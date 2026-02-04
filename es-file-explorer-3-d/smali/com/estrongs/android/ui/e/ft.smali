.class public Lcom/estrongs/android/ui/e/ft;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/ak;->H(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/util/ak;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/ak;->aU(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/estrongs/android/util/ak;->F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/estrongs/android/util/ak;->aU(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/estrongs/android/util/ak;->an(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/estrongs/android/util/ak;->aU(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/estrongs/android/util/ak;->K(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/estrongs/android/util/ak;->M(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lcom/estrongs/android/util/ak;->L(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    goto :goto_0

    :cond_6
    invoke-static {p0}, Lcom/estrongs/android/util/ak;->N(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    :cond_7
    invoke-static {p0}, Lcom/estrongs/android/util/ak;->aN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto :goto_0

    :cond_8
    invoke-static {p0}, Lcom/estrongs/android/util/ak;->O(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p0}, Lcom/estrongs/android/util/ak;->X(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    const/16 v0, 0x9

    goto :goto_0

    :cond_a
    invoke-static {p0}, Lcom/estrongs/android/util/ak;->aC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xe

    goto :goto_0

    :cond_b
    invoke-static {p0}, Lcom/estrongs/android/util/ak;->au(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xf

    goto :goto_0

    :cond_c
    if-eqz p0, :cond_d

    const-string v0, "New"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    const/4 v0, -0x1

    goto :goto_0

    :cond_e
    invoke-static {p0}, Lcom/estrongs/android/util/ak;->Q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p0}, Lcom/estrongs/android/util/ak;->X(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p0}, Lcom/estrongs/android/util/ak;->W(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x18

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0x10

    goto/16 :goto_0

    :cond_10
    invoke-static {p0}, Lcom/estrongs/android/util/ak;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x11

    goto/16 :goto_0

    :cond_11
    invoke-static {p0}, Lcom/estrongs/android/util/ak;->aE(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x13

    goto/16 :goto_0

    :cond_12
    invoke-static {p0}, Lcom/estrongs/android/util/ak;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x12

    goto/16 :goto_0

    :cond_13
    invoke-static {p0}, Lcom/estrongs/android/util/ak;->aq(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "PCS_DRIVE_Js1a7M5e_9yAcTvFX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    const/16 v0, 0x14

    goto/16 :goto_0

    :cond_15
    invoke-static {p0}, Lcom/estrongs/android/util/ak;->q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x15

    goto/16 :goto_0

    :cond_16
    invoke-static {p0}, Lcom/estrongs/android/util/ak;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x16

    goto/16 :goto_0

    :cond_17
    invoke-static {p0}, Lcom/estrongs/android/util/ak;->bz(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v0, 0x17

    goto/16 :goto_0

    :cond_18
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
