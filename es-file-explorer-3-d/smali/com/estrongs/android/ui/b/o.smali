.class Lcom/estrongs/android/ui/b/o;
.super Lcom/estrongs/android/view/cq;


# instance fields
.field a:Landroid/widget/RadioButton;

.field b:Landroid/widget/RadioButton;

.field c:Landroid/widget/EditText;

.field d:Landroid/widget/EditText;

.field e:Landroid/widget/EditText;

.field f:Landroid/widget/EditText;

.field final synthetic g:Lcom/estrongs/android/ui/b/l;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/b/l;Lcom/estrongs/android/pop/esclasses/ESActivity;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/ui/b/o;->g:Lcom/estrongs/android/ui/b/l;

    invoke-direct {p0, p2}, Lcom/estrongs/android/view/cq;-><init>(Landroid/app/Activity;)V

    const v0, 0x7f080096

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/o;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/o;->a:Landroid/widget/RadioButton;

    const v0, 0x7f08009e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/o;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/o;->b:Landroid/widget/RadioButton;

    const v0, 0x7f080093

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/o;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/o;->c:Landroid/widget/EditText;

    const v0, 0x7f080099

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/o;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/o;->d:Landroid/widget/EditText;

    const v0, 0x7f08009b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/o;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/o;->e:Landroid/widget/EditText;

    const v0, 0x7f0800a0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/o;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/o;->f:Landroid/widget/EditText;

    const v0, 0x7f080092

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/o;->l(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/b/p;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/b/p;-><init>(Lcom/estrongs/android/ui/b/o;Lcom/estrongs/android/ui/b/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08009a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/o;->l(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/b/q;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/b/q;-><init>(Lcom/estrongs/android/ui/b/o;Lcom/estrongs/android/ui/b/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/o;->a:Landroid/widget/RadioButton;

    new-instance v1, Lcom/estrongs/android/ui/b/r;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/b/r;-><init>(Lcom/estrongs/android/ui/b/o;Lcom/estrongs/android/ui/b/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/o;->b:Landroid/widget/RadioButton;

    new-instance v1, Lcom/estrongs/android/ui/b/s;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/b/s;-><init>(Lcom/estrongs/android/ui/b/o;Lcom/estrongs/android/ui/b/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/o;->a:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/o;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/o;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/o;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/b/o;->l(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/b/o;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/o;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/b/o;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/b/o;->l(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/b/o;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/o;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/b/o;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/b/o;->l(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/b/o;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/o;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/b/o;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/b/o;->l(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/b/o;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/o;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/b/o;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/b/o;->l(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/b/o;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/o;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/b/o;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/b/o;->l(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/b/o;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/o;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/b/o;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/b/o;->l(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/b/o;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/o;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/b/o;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/b/o;->l(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/ui/b/o;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/o;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/ui/b/o;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/b/o;->l(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/ui/b/o;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/o;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/ui/b/o;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/b/o;->l(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcom/estrongs/android/ui/b/o;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/o;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/ui/b/o;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/o;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic m(Lcom/estrongs/android/ui/b/o;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/o;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic n(Lcom/estrongs/android/ui/b/o;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/o;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic o(Lcom/estrongs/android/ui/b/o;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/o;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic p(Lcom/estrongs/android/ui/b/o;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/o;->ad:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f030011

    return v0
.end method
