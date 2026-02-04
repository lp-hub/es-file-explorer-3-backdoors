.class public Lcom/estrongs/android/ui/pcs/bb;
.super Ljava/lang/Object;


# instance fields
.field private A:Z

.field private B:Ljava/lang/String;

.field private C:Z

.field private D:Z

.field a:Lcom/estrongs/android/ui/pcs/bi;

.field b:Lcom/estrongs/android/ui/pcs/bo;

.field private c:Landroid/content/Context;

.field private d:Lcom/estrongs/android/widget/SlidingDrawer;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/ViewFlipper;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/ProgressBar;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/EditText;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/EditText;

.field private r:Landroid/widget/CheckBox;

.field private s:Landroid/widget/Button;

.field private t:Landroid/widget/ProgressBar;

.field private u:Landroid/widget/TextView;

.field private v:Z

.field private w:Z

.field private x:Lcom/estrongs/android/pop/q;

.field private y:Lcom/estrongs/android/ui/pcs/ag;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/ui/pcs/bb;->o:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/estrongs/android/ui/pcs/bb;->p:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/estrongs/android/ui/pcs/bb;->q:Landroid/widget/EditText;

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/bb;->w:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/pcs/bb;->z:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/ui/pcs/bb;->B:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/bb;->C:Z

    new-instance v1, Lcom/estrongs/android/ui/pcs/bi;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/bi;-><init>(Lcom/estrongs/android/ui/pcs/bb;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/pcs/bb;->a:Lcom/estrongs/android/ui/pcs/bi;

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/bb;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/estrongs/android/ui/pcs/bb;->z:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bb;->z:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/bb;->D:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->x:Lcom/estrongs/android/pop/q;

    instance-of v0, p2, Lcom/estrongs/android/widget/ESViewStub;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/estrongs/android/widget/ESViewStub;

    const v0, 0x7f030091

    invoke-virtual {p2, v0}, Lcom/estrongs/android/widget/ESViewStub;->b(I)V

    const v0, 0x7f0800a4

    invoke-virtual {p2, v0}, Lcom/estrongs/android/widget/ESViewStub;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/estrongs/android/widget/ESViewStub;->a(Landroid/view/LayoutInflater;)V

    invoke-virtual {p2}, Lcom/estrongs/android/widget/ESViewStub;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/SlidingDrawer;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->d:Lcom/estrongs/android/widget/SlidingDrawer;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->d:Lcom/estrongs/android/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/SlidingDrawer;->f()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->d:Lcom/estrongs/android/widget/SlidingDrawer;

    new-instance v1, Lcom/estrongs/android/ui/pcs/bc;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/bc;-><init>(Lcom/estrongs/android/ui/pcs/bb;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/SlidingDrawer;->a(Lcom/estrongs/android/widget/bi;)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/bb;->g()V

    return-void

    :cond_2
    instance-of v0, p2, Lcom/estrongs/android/widget/SlidingDrawer;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/estrongs/android/widget/SlidingDrawer;

    iput-object p2, p0, Lcom/estrongs/android/ui/pcs/bb;->d:Lcom/estrongs/android/widget/SlidingDrawer;

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/bb;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/pcs/bb;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->x:Lcom/estrongs/android/pop/q;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/pop/q;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/bb;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/pcs/bb;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/bb;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/pcs/bb;->C:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->m:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/bb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/bb;->B:Ljava/lang/String;

    return-object p1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/pcs/bb;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/pcs/bb;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/bb;->k()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->k:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private g()V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x4

    const/4 v4, -0x1

    const/4 v3, -0x2

    new-instance v0, Lcom/estrongs/android/ui/pcs/bo;

    invoke-direct {v0, p0, p0}, Lcom/estrongs/android/ui/pcs/bo;-><init>(Lcom/estrongs/android/ui/pcs/bb;Lcom/estrongs/android/ui/pcs/bb;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->b:Lcom/estrongs/android/ui/pcs/bo;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->e:Landroid/view/View;

    const v1, 0x7f0800e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->f:Landroid/widget/ViewFlipper;

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/bb;->i()V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03008e

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03008f

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->f:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bb;->g:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->f:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bb;->h:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->f:Landroid/widget/ViewFlipper;

    const v1, 0x7f08010d

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->q:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->f:Landroid/widget/ViewFlipper;

    const v1, 0x7f08010e

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->o:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->f:Landroid/widget/ViewFlipper;

    const v1, 0x7f08010c

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->p:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->f:Landroid/widget/ViewFlipper;

    const v1, 0x7f080095

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->i:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->i:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/bb;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->f:Landroid/widget/ViewFlipper;

    const v1, 0x7f080111

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->j:Landroid/widget/Button;

    const v1, 0x7f0b048f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->j:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/pcs/bd;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/bd;-><init>(Lcom/estrongs/android/ui/pcs/bb;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->f:Landroid/widget/ViewFlipper;

    const v1, 0x7f080075

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->k:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->f:Landroid/widget/ViewFlipper;

    const v1, 0x7f0802c4

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->l:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->f:Landroid/widget/ViewFlipper;

    const v1, 0x7f0800b4

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->f:Landroid/widget/ViewFlipper;

    const v1, 0x7f0802c5

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/pcs/be;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/be;-><init>(Lcom/estrongs/android/ui/pcs/bb;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->f:Landroid/widget/ViewFlipper;

    const v1, 0x7f0800f4

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->m:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->f:Landroid/widget/ViewFlipper;

    const v1, 0x7f0802c6

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->r:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->r:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/bb;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->g:Landroid/view/View;

    const v1, 0x7f0800e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/bb;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->f:Landroid/widget/ViewFlipper;

    const v1, 0x7f0802c9

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->t:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->t:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->f:Landroid/widget/ViewFlipper;

    const v1, 0x7f0802c8

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->s:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->s:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bb;->c:Landroid/content/Context;

    const v2, 0x7f0b006e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->s:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/pcs/bf;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/bf;-><init>(Lcom/estrongs/android/ui/pcs/bb;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->f:Landroid/widget/ViewFlipper;

    const v1, 0x7f0802c1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->u:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->u:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/bb;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/ui/pcs/bb;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/bb;->D:Z

    return v0
.end method

.method private h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->c:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/pcs/bb;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/bb;->w:Z

    return v0
.end method

.method static synthetic i(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->l:Landroid/widget/EditText;

    return-object v0
.end method

.method private i()V
    .locals 13

    const-wide/16 v11, 0x12c

    const/4 v4, 0x0

    const/4 v1, 0x1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/bb;->f:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v0}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000    # -1.0f

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    move v9, v1

    move v10, v4

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v2, v11, v12}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->f:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->f:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->f:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/estrongs/android/ui/pcs/bb;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/bb;->v:Z

    return v0
.end method

.method private k()V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-boolean v2, p0, Lcom/estrongs/android/ui/pcs/bb;->w:Z

    iget-boolean v1, p0, Lcom/estrongs/android/ui/pcs/bb;->D:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bb;->b:Lcom/estrongs/android/ui/pcs/bo;

    iput-boolean v2, v1, Lcom/estrongs/android/ui/pcs/bo;->b:Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/estrongs/android/ui/pcs/bg;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/pcs/bg;-><init>(Lcom/estrongs/android/ui/pcs/bb;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->b:Lcom/estrongs/android/ui/pcs/bo;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/bb;->c:Landroid/content/Context;

    const v3, 0x7f0b0476

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/pcs/bo;->a(Lcom/estrongs/android/ui/pcs/bo;ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->a:Lcom/estrongs/android/ui/pcs/bi;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/bi;->a()V

    goto :goto_0
.end method

.method static synthetic k(Lcom/estrongs/android/ui/pcs/bb;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/bb;->l()V

    return-void
.end method

.method static synthetic l(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->t:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private l()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bb;->m:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/bb;->l:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/estrongs/android/ui/pcs/bb;->D:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/estrongs/android/ui/pcs/bh;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/estrongs/android/ui/pcs/bh;-><init>(Lcom/estrongs/android/ui/pcs/bb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->b:Lcom/estrongs/android/ui/pcs/bo;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/bo;->a()V

    goto :goto_0
.end method

.method static synthetic m(Lcom/estrongs/android/ui/pcs/bb;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/estrongs/android/ui/pcs/bb;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/bb;->A:Z

    return v0
.end method

.method static synthetic o(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->s:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic p(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->j:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic q(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->p:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic r(Lcom/estrongs/android/ui/pcs/bb;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/bb;->j()V

    return-void
.end method

.method static synthetic s(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->q:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic t(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->o:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->d:Lcom/estrongs/android/widget/SlidingDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/SlidingDrawer;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/bb;->A:Z

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/pcs/ag;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/bb;->y:Lcom/estrongs/android/ui/pcs/ag;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-direct {p0, v1, p1}, Lcom/estrongs/android/ui/pcs/bb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/aw;->a(I)V

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/pcs/aw;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->y:Lcom/estrongs/android/ui/pcs/ag;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->y:Lcom/estrongs/android/ui/pcs/ag;

    invoke-interface {v0, p1}, Lcom/estrongs/android/ui/pcs/ag;->a(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "Normal_Register"

    const-string v2, "Normal_Register"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->y:Lcom/estrongs/android/ui/pcs/ag;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->y:Lcom/estrongs/android/ui/pcs/ag;

    invoke-interface {v0, v1}, Lcom/estrongs/android/ui/pcs/ag;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/bb;->c()V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/bb;->C:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->B:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/pcs/bb;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->d:Lcom/estrongs/android/widget/SlidingDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/SlidingDrawer;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/bb;->A:Z

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/bb;->A:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->d:Lcom/estrongs/android/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/SlidingDrawer;->g()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bb;->d:Lcom/estrongs/android/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/SlidingDrawer;->d()V

    return-void
.end method
