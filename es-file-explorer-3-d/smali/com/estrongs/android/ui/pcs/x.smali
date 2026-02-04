.class public Lcom/estrongs/android/ui/pcs/x;
.super Ljava/lang/Object;


# static fields
.field private static c:Ljava/lang/String;


# instance fields
.field private A:Lcom/estrongs/android/ui/pcs/aw;

.field private B:Lcom/estrongs/android/ui/pcs/ag;

.field private C:Ljava/lang/String;

.field private D:Z

.field private E:Z

.field a:Lcom/estrongs/android/ui/pcs/ah;

.field b:Lcom/estrongs/android/ui/pcs/an;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Landroid/content/Context;

.field private g:Lcom/estrongs/android/ui/b/ag;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/ViewFlipper;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/ProgressBar;

.field private o:Landroid/widget/EditText;

.field private p:Landroid/widget/EditText;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/LinearLayout;

.field private t:Landroid/widget/EditText;

.field private u:Landroid/widget/CheckBox;

.field private v:Landroid/widget/Button;

.field private w:Landroid/widget/TextView;

.field private x:Z

.field private y:Z

.field private z:Lcom/estrongs/android/pop/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "PCSReg"

    sput-object v0, Lcom/estrongs/android/ui/pcs/x;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/pcs/x;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/x;->E:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/ui/pcs/x;->d:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/x;->e:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/pcs/x;->r:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/estrongs/android/ui/pcs/x;->s:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/estrongs/android/ui/pcs/x;->t:Landroid/widget/EditText;

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/x;->y:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/pcs/x;->C:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/x;->D:Z

    new-instance v1, Lcom/estrongs/android/ui/pcs/ah;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/ah;-><init>(Lcom/estrongs/android/ui/pcs/x;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/pcs/x;->a:Lcom/estrongs/android/ui/pcs/ah;

    iput-object p2, p0, Lcom/estrongs/android/ui/pcs/x;->C:Ljava/lang/String;

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/x;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/x;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/pcs/x;->z:Lcom/estrongs/android/pop/q;

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/pcs/x;->A:Lcom/estrongs/android/ui/pcs/aw;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/x;->C:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/x;->E:Z

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/x;->d()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->l:Landroid/widget/EditText;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->z:Lcom/estrongs/android/pop/q;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/pop/q;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/x;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/pcs/x;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/x;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/pcs/x;->x:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->p:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/x;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/x;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/x;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/pcs/x;->e:Z

    return p1
.end method

.method static synthetic c(Lcom/estrongs/android/ui/pcs/x;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/pcs/x;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/pcs/x;->D:Z

    return p1
.end method

.method private c(Ljava/lang/String;)Z
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

.method private d()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/16 v9, 0xf

    const/4 v8, 0x7

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/16 v5, 0x8

    new-instance v0, Lcom/estrongs/android/ui/pcs/an;

    invoke-direct {v0, p0, p0}, Lcom/estrongs/android/ui/pcs/an;-><init>(Lcom/estrongs/android/ui/pcs/x;Lcom/estrongs/android/ui/pcs/x;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->b:Lcom/estrongs/android/ui/pcs/an;

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/x;->f()Landroid/widget/ViewFlipper;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->i:Landroid/widget/ViewFlipper;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03008e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03008f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->i:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/x;->j:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x10

    invoke-direct {v2, v7, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->i:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/x;->k:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x10

    invoke-direct {v2, v7, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->i:Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->h:Landroid/view/View;

    const v1, 0x7f08010d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->t:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->h:Landroid/view/View;

    const v1, 0x7f08010e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->r:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->h:Landroid/view/View;

    const v1, 0x7f08010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->s:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->h:Landroid/view/View;

    const v1, 0x7f080095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->l:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->h:Landroid/view/View;

    const v1, 0x7f080111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->m:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->m:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/pcs/y;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/y;-><init>(Lcom/estrongs/android/ui/pcs/x;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->h:Landroid/view/View;

    const v1, 0x7f080075

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->n:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->n:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->h:Landroid/view/View;

    const v1, 0x7f0802c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->o:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->h:Landroid/view/View;

    const v1, 0x7f0800b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->q:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->h:Landroid/view/View;

    const v1, 0x7f0800f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->p:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->h:Landroid/view/View;

    const v1, 0x7f0802c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->u:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->u:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/x;->x:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->u:Landroid/widget/CheckBox;

    new-instance v1, Lcom/estrongs/android/ui/pcs/z;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/z;-><init>(Lcom/estrongs/android/ui/pcs/x;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->h:Landroid/view/View;

    const v1, 0x7f0802c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/URLSpan;

    const-string v3, "http://passport.baidu.com/protocal.html"

    invoke-direct {v2, v3}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x21

    invoke-virtual {v1, v2, v8, v9, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/estrongs/android/ui/pcs/x;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-virtual {v1, v2, v8, v9, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->h:Landroid/view/View;

    const v1, 0x7f0802c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/pcs/aa;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/aa;-><init>(Lcom/estrongs/android/ui/pcs/x;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->h:Landroid/view/View;

    const v1, 0x7f0802c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->v:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->v:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/pcs/ab;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/ab;-><init>(Lcom/estrongs/android/ui/pcs/x;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->h:Landroid/view/View;

    const v1, 0x7f0802c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->w:Landroid/widget/TextView;

    sget-boolean v0, Lcom/estrongs/android/pop/m;->F:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->h:Landroid/view/View;

    const v1, 0x7f0800e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->w:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/x;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0452

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/x;->h:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->g:Lcom/estrongs/android/ui/b/ag;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->g:Lcom/estrongs/android/ui/b/ag;

    new-instance v1, Lcom/estrongs/android/ui/pcs/ad;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/ad;-><init>(Lcom/estrongs/android/ui/pcs/x;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ag;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->g:Lcom/estrongs/android/ui/b/ag;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ag;->setCanceledOnTouchOutside(Z)V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/x;->E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->g:Lcom/estrongs/android/ui/b/ag;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/x;->f:Landroid/content/Context;

    const v2, 0x7f0b048f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ag;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->h:Landroid/view/View;

    const v1, 0x7f0800e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->w:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->v:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/x;->f:Landroid/content/Context;

    const v2, 0x7f0b0490

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/x;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/pcs/x;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->w:Landroid/widget/TextView;

    new-instance v1, Lcom/estrongs/android/ui/pcs/ac;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/ac;-><init>(Lcom/estrongs/android/ui/pcs/x;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/pcs/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/x;->g()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->i:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->n:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->i:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->n:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private f()Landroid/widget/ViewFlipper;
    .locals 14

    const-wide/16 v12, 0x12c

    const/4 v4, 0x0

    const/4 v1, 0x1

    new-instance v11, Landroid/widget/ViewFlipper;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->f:Landroid/content/Context;

    invoke-direct {v11, v0}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v11, v0}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000    # -1.0f

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    move v9, v1

    move v10, v4

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v2, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v11, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    return-object v11
.end method

.method private g()V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-boolean v2, p0, Lcom/estrongs/android/ui/pcs/x;->y:Z

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/x;->C:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/x;->b:Lcom/estrongs/android/ui/pcs/an;

    iput-boolean v2, v1, Lcom/estrongs/android/ui/pcs/an;->b:Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/estrongs/android/ui/pcs/ae;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/pcs/ae;-><init>(Lcom/estrongs/android/ui/pcs/x;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->b:Lcom/estrongs/android/ui/pcs/an;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/x;->f:Landroid/content/Context;

    const v3, 0x7f0b0476

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/pcs/an;->a(Lcom/estrongs/android/ui/pcs/an;ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->a:Lcom/estrongs/android/ui/pcs/ah;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/ah;->a()V

    goto :goto_0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/pcs/x;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/x;->E:Z

    return v0
.end method

.method private h()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/x;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/x;->o:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/estrongs/android/ui/pcs/x;->E:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/estrongs/android/ui/pcs/af;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/estrongs/android/ui/pcs/af;-><init>(Lcom/estrongs/android/ui/pcs/x;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->b:Lcom/estrongs/android/ui/pcs/an;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/an;->a()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/pcs/x;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/x;->y:Z

    return v0
.end method

.method static synthetic i(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->o:Landroid/widget/EditText;

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->f:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/ui/pcs/x;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/x;->x:Z

    return v0
.end method

.method static synthetic k(Lcom/estrongs/android/ui/pcs/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/x;->h()V

    return-void
.end method

.method static synthetic l(Lcom/estrongs/android/ui/pcs/x;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/x;->e:Z

    return v0
.end method

.method static synthetic m(Lcom/estrongs/android/ui/pcs/x;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/estrongs/android/ui/pcs/x;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->C:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->m:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic p(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->s:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic q(Lcom/estrongs/android/ui/pcs/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/x;->e()V

    return-void
.end method

.method static synthetic r(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->t:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic s(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->r:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->f:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/x;->D:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->g:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->show()V

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Press_Register"

    const-string v2, "Press_Register"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->g:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/b/ag;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->g:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/b/ag;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/pcs/ag;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/x;->B:Lcom/estrongs/android/ui/pcs/ag;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->l:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    invoke-direct {p0, v2, p1}, Lcom/estrongs/android/ui/pcs/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->A:Lcom/estrongs/android/ui/pcs/aw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->A:Lcom/estrongs/android/ui/pcs/aw;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/aw;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->A:Lcom/estrongs/android/ui/pcs/aw;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/pcs/aw;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->B:Lcom/estrongs/android/ui/pcs/ag;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->B:Lcom/estrongs/android/ui/pcs/ag;

    invoke-interface {v0, p1}, Lcom/estrongs/android/ui/pcs/ag;->a(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "Normal_Register"

    const-string v2, "Normal_Register"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/x;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v1

    const-string v2, "Market"

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/q;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->bp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/estrongs/android/pop/q;->n()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/estrongs/android/pop/m;->I:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ar;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->B:Lcom/estrongs/android/ui/pcs/ag;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->B:Lcom/estrongs/android/ui/pcs/ag;

    invoke-interface {v0, v2}, Lcom/estrongs/android/ui/pcs/ag;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/x;->D:Z

    return v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/x;->g:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->dismiss()V

    return-void
.end method
