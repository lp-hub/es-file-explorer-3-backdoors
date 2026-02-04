.class public Lcom/estrongs/android/ui/d/d;
.super Ljava/lang/Object;


# static fields
.field public static final b:Lcom/estrongs/android/ui/d/d;


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/d/d;

    const-string v1, "Null Window Info"

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/d/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/estrongs/android/ui/d/d;->b:Lcom/estrongs/android/ui/d/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/d/d;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aK(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    const-string v1, "New"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->H(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->G(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->an(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aJ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->K(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->M(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->L(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aC(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->au(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    const/4 v0, 0x6

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->N(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x9

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->O(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->Q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    const/16 v0, 0xb

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0xc

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    const-string v1, "download://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xa

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aE(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0xf

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0xd

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    const-string v1, "m.baidu.com/app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x17

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x16

    goto/16 :goto_0

    :cond_13
    const-string v0, "remote://"

    iget-object v1, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0xe

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->bz(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x18

    goto/16 :goto_0

    :cond_15
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/ui/d/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const v4, 0x7f0b0446

    const v3, 0x7f0b0051

    invoke-static {p2}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/estrongs/android/util/ak;->ao(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez p2, :cond_4

    const v0, 0x7f0b001c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/estrongs/android/util/ak;->aC(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    const-string v1, "smb://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const v0, 0x7f0b004d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_2
    return-object v0

    :cond_4
    const-string v1, "/"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v0, 0x7f0b038f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v1, "search:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0b0360

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-static {p2}, Lcom/estrongs/android/util/ak;->au(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {p2}, Lcom/estrongs/android/util/ak;->at(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const v0, 0x7f0b02cf

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    iget-object v1, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Lcom/estrongs/android/util/ak;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Lcom/estrongs/android/util/ak;->ag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v0, 0x7f0b00a4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    invoke-static {p2}, Lcom/estrongs/android/util/ak;->ah(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const v0, 0x7f0b00a5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_9
    invoke-static {p2}, Lcom/estrongs/android/util/ak;->ai(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f0b00a6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_a
    invoke-static {p2}, Lcom/estrongs/android/util/ak;->Q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {p2}, Lcom/estrongs/android/util/ak;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {p2}, Lcom/estrongs/android/util/ak;->R(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    const v0, 0x7f0b015f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_c
    invoke-static {p2}, Lcom/estrongs/android/util/ak;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const v0, 0x7f0b015e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_d
    invoke-static {p2}, Lcom/estrongs/android/util/ak;->U(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const v0, 0x7f0b0369

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_e
    invoke-static {p2}, Lcom/estrongs/android/util/ak;->V(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const v0, 0x7f0b036a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_f
    invoke-static {p2}, Lcom/estrongs/android/util/ak;->W(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const v0, 0x7f0b04c9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_10
    invoke-static {p2}, Lcom/estrongs/android/util/ak;->X(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f0b0163

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_11
    invoke-static {p2}, Lcom/estrongs/android/util/ak;->O(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const v0, 0x7f0b036b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_12
    iget-object v1, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    const-string v2, "download://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const v0, 0x7f0b0379

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_13
    invoke-static {p2}, Lcom/estrongs/android/util/ak;->aE(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aG(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_14
    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_15
    iget-object v1, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    const-string v2, "du://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f0b0131

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_16
    const-string v1, "ftp://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const v0, 0x7f0b004e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_17
    const-string v1, "bt://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const v0, 0x7f0b0050

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_18
    const-string v1, "net://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const v0, 0x7f0b004f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_19
    const-string v1, "music://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const v0, 0x7f0b0059

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_1a
    const-string v1, "pic://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_1b
    const-string v1, "video://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const v0, 0x7f0b005c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_1c
    const-string v1, "book://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const v0, 0x7f0b005b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_1d
    const-string v1, "New"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "remote://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const v0, 0x7f0b030d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_1e
    const-string v1, "pcs://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "pcs://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_1f
    const/16 v1, 0x17

    invoke-static {p2, v1}, Lcom/estrongs/android/util/ak;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_20
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_21
    const-string v1, "recycle://"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const v0, 0x7f0b042c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_22
    invoke-static {p1}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/estrongs/android/pop/q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    move-object v0, v1

    goto/16 :goto_2

    :cond_23
    invoke-static {p2}, Lcom/estrongs/android/util/ak;->aJ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v0, 0x0

    invoke-static {v0, p2}, Lcom/estrongs/android/util/ak;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_24
    invoke-static {p2}, Lcom/estrongs/android/util/ak;->aP(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    invoke-static {p2}, Lcom/estrongs/android/util/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/d/d;->a()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const v0, 0x7f0b00a3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    const v0, 0x7f0b017b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const v0, 0x7f0b0050

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    const v0, 0x7f0b0379

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    const v0, 0x7f0b0131

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    const v0, 0x7f0b004e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    const v0, 0x7f0b004d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    const v0, 0x7f0b005c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    const/4 v1, 0x7

    if-ne v0, v1, :cond_8

    const v0, 0x7f0b0059

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    const v0, 0x7f0b004f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    const/16 v1, 0xc

    if-ne v0, v1, :cond_a

    const v0, 0x7f0b0446

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_a
    const/4 v1, 0x6

    if-ne v0, v1, :cond_b

    const v0, 0x7f0b0058

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_b
    const/16 v1, 0xe

    if-ne v0, v1, :cond_c

    const v0, 0x7f0b030d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x17

    if-ne v0, v1, :cond_d

    const v0, 0x7f0b0111

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x16

    if-ne v0, v1, :cond_e

    const v0, 0x7f0b040a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/d/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/d/d;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method
