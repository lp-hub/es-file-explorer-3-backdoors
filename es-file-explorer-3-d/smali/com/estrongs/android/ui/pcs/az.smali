.class public Lcom/estrongs/android/ui/pcs/az;
.super Lcom/estrongs/android/view/ar;


# static fields
.field public static b:Lcom/estrongs/android/ui/pcs/bb;


# instance fields
.field private a:Landroid/view/View;

.field private ac:Ljava/lang/String;

.field private ah:Ljava/lang/String;

.field private ai:Lcom/estrongs/android/ui/pcs/ag;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/pcs/az;->b:Lcom/estrongs/android/ui/pcs/bb;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/estrongs/fs/c/a/a;Lcom/estrongs/android/view/bs;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/estrongs/android/view/ar;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/estrongs/fs/c/a/a;Lcom/estrongs/android/view/bs;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/pcs/az;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->ac:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/az;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/estrongs/android/util/ak;->bw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private al()Z
    .locals 2

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->e()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/ui/pcs/az;->c:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->ao(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View$OnTouchListener;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/android/view/ar;->a(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/estrongs/fs/g;Lcom/estrongs/android/util/TypedMap;)V
    .locals 3

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aq(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->ao(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/az;->q()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/az;->n()V

    :cond_0
    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->ar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/ui/pcs/bt;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/az;->N:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/ui/pcs/bt;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/az;->N:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/estrongs/android/ui/pcs/bt;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/az;->ad:Landroid/app/Activity;

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/ui/pcs/bt;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/bt;->a()V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/view/ar;->a(Lcom/estrongs/fs/g;Lcom/estrongs/android/util/TypedMap;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->aq(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->ao(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/az;->q()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/az;->n()V

    invoke-super {p0, p1}, Lcom/estrongs/android/view/ar;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->as(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/aw;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->c()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/az;->c_()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/az;->q()V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->z:Lcom/estrongs/android/view/br;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->z:Lcom/estrongs/android/view/br;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/estrongs/android/view/br;->a(Ljava/lang/String;Z)V

    :cond_2
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->as(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->ad:Landroid/app/Activity;

    const v1, 0x7f0b047b

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/app/Activity;I)V

    :cond_3
    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->e()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/pcs/az;->c:I

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/az;->ac:Ljava/lang/String;

    :goto_1
    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->e()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/pcs/az;->c:I

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/pcs/az;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->ac:Ljava/lang/String;

    :cond_4
    invoke-super {p0, p1}, Lcom/estrongs/android/view/ar;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/az;->w:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/ui/pcs/az;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->ad:Landroid/app/Activity;

    const v1, 0x7f0b049d

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/app/Activity;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/aw;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/az;->w:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/az;->G()V

    :cond_6
    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/az;->n()V

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->l()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/az;->p()V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/az;->q()V

    goto :goto_1
.end method

.method public a_()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/view/ar;->a_()V

    sget-object v0, Lcom/estrongs/android/ui/pcs/az;->b:Lcom/estrongs/android/ui/pcs/bb;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/pcs/az;->b:Lcom/estrongs/android/ui/pcs/bb;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/bb;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/pcs/az;->b:Lcom/estrongs/android/ui/pcs/bb;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/bb;->c()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/az;->ah:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->ah:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/d;->m(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->x:Lcom/estrongs/fs/g;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->x:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->w:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 3

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->e()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/pcs/az;->c:I

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aq(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->ao(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/az;->q()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/az;->n()V

    invoke-super {p0, p1}, Lcom/estrongs/android/view/ar;->b(Z)V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/az;->N:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/az;->N:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->w:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/az;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->ac:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/az;->n()V

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->l()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/az;->p()V

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->as(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->w:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/pcs/az;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/az;->q()V

    goto :goto_2

    :cond_4
    invoke-super {p0, p1}, Lcom/estrongs/android/view/ar;->b(Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->ao(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->ad:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    const-string v1, "Market"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/q;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->bp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/pcs/az;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/az;->G()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/az;->c_()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/az;->q()V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->z:Lcom/estrongs/android/view/br;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->z:Lcom/estrongs/android/view/br;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/az;->w:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/view/br;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public b_()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/view/ar;->b_()V

    sget-object v0, Lcom/estrongs/android/ui/pcs/az;->b:Lcom/estrongs/android/ui/pcs/bb;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/pcs/az;->b:Lcom/estrongs/android/ui/pcs/bb;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/bb;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/pcs/az;->b:Lcom/estrongs/android/ui/pcs/bb;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/bb;->c()V

    :cond_0
    return-void
.end method

.method public c_()V
    .locals 6

    const/16 v5, 0x8

    const/4 v3, -0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->a:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->ad:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03008c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/HeaderGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/az;->a:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/estrongs/android/ui/pcs/ba;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/ba;-><init>(Lcom/estrongs/android/ui/pcs/az;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->a:Landroid/view/View;

    const v2, 0x7f0801f0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->a:Landroid/view/View;

    const v2, 0x7f0800f7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_0
    sget-boolean v1, Lcom/estrongs/android/pop/m;->Q:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0b0449

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/pcs/az;->n(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u4f7f\u7528\u767e\u5ea6\u6216QQ"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/widget/HeaderGridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/HeaderGridView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public l()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->ah:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->ah:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/pcs/az;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->ah:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aq(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->ao(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/az;->ac:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/pcs/az;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/estrongs/android/ui/pcs/az;->c:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->ad:Landroid/app/Activity;

    const v1, 0x7f0b049d

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/app/Activity;I)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->ao(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/az;->G()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/aw;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/d;->m(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->x:Lcom/estrongs/fs/g;

    :cond_3
    iput-boolean v2, p0, Lcom/estrongs/android/ui/pcs/az;->L:Z

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/az;->al()Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->ad:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    const-string v1, "Market"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/q;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->bp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/az;->w:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/az;->w:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->n()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/estrongs/android/pop/m;->I:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/az;->L:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->e()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/pcs/az;->c:I

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->w:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/az;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->ac:Ljava/lang/String;

    invoke-super {p0}, Lcom/estrongs/android/view/ar;->l()V

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/az;->al()Z

    move-result v0

    if-eqz v0, :cond_7

    iput-boolean v2, p0, Lcom/estrongs/android/ui/pcs/az;->L:Z

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/az;->p()V

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/az;->q()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->g:Lcom/estrongs/android/widget/HeaderGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/az;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public o()Z
    .locals 1

    sget-object v0, Lcom/estrongs/android/ui/pcs/az;->b:Lcom/estrongs/android/ui/pcs/bb;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/pcs/az;->b:Lcom/estrongs/android/ui/pcs/bb;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/bb;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/pcs/az;->b:Lcom/estrongs/android/ui/pcs/bb;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/bb;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/pcs/az;->b:Lcom/estrongs/android/ui/pcs/bb;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/bb;->f()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()V
    .locals 4

    sget-object v0, Lcom/estrongs/android/ui/pcs/az;->b:Lcom/estrongs/android/ui/pcs/bb;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/pcs/bb;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/az;->ad:Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/az;->ad:Landroid/app/Activity;

    const v3, 0x7f0800a4

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/az;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/ui/pcs/bb;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    sput-object v0, Lcom/estrongs/android/ui/pcs/az;->b:Lcom/estrongs/android/ui/pcs/bb;

    sget-object v0, Lcom/estrongs/android/ui/pcs/az;->b:Lcom/estrongs/android/ui/pcs/bb;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/az;->ai:Lcom/estrongs/android/ui/pcs/ag;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/bb;->a(Lcom/estrongs/android/ui/pcs/ag;)V

    :cond_0
    sget-object v0, Lcom/estrongs/android/ui/pcs/az;->b:Lcom/estrongs/android/ui/pcs/bb;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/bb;->a()V

    return-void
.end method

.method public q()V
    .locals 1

    sget-object v0, Lcom/estrongs/android/ui/pcs/az;->b:Lcom/estrongs/android/ui/pcs/bb;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/pcs/az;->b:Lcom/estrongs/android/ui/pcs/bb;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/bb;->c()V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/pcs/az;->b:Lcom/estrongs/android/ui/pcs/bb;

    return-void
.end method
