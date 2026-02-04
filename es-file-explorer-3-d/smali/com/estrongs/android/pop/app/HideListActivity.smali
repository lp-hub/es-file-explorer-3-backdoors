.class public Lcom/estrongs/android/pop/app/HideListActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field public a:Landroid/view/View$OnClickListener;

.field public b:Landroid/view/View$OnClickListener;

.field private c:Landroid/widget/FrameLayout;

.field private d:[Lcom/estrongs/android/pop/utils/af;

.field private e:Landroid/widget/ListView;

.field private f:Lcom/estrongs/android/pop/utils/af;

.field private g:Z

.field private h:Lcom/estrongs/android/pop/app/bk;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->d:[Lcom/estrongs/android/pop/utils/af;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->e:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->f:Lcom/estrongs/android/pop/utils/af;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->g:Z

    new-instance v0, Lcom/estrongs/android/pop/app/bg;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/bg;-><init>(Lcom/estrongs/android/pop/app/HideListActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->a:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/estrongs/android/pop/app/bh;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/bh;-><init>(Lcom/estrongs/android/pop/app/HideListActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/HideListActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/HideListActivity;Lcom/estrongs/android/pop/app/bk;)Lcom/estrongs/android/pop/app/bk;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/HideListActivity;->h:Lcom/estrongs/android/pop/app/bk;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/HideListActivity;Lcom/estrongs/android/pop/utils/af;)Lcom/estrongs/android/pop/utils/af;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/HideListActivity;->f:Lcom/estrongs/android/pop/utils/af;

    return-object p1
.end method

.method private a()V
    .locals 6

    const v5, 0x7f0b0053

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->c:Landroid/widget/FrameLayout;

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03004f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/HideListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0800b4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/HideListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0801f7

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/HideListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08017b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/HideListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/al;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0800f6

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/HideListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->e:Landroid/widget/ListView;

    const v0, 0x7f0800d3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/HideListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0338

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/HideListActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    invoke-static {}, Lcom/estrongs/android/pop/utils/aa;->c()[Lcom/estrongs/android/pop/utils/af;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->d:[Lcom/estrongs/android/pop/utils/af;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->d:[Lcom/estrongs/android/pop/utils/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->d:[Lcom/estrongs/android/pop/utils/af;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    const v0, 0x7f08017a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/HideListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/estrongs/android/ui/view/az;

    invoke-direct {v1, p0, v0, v4}, Lcom/estrongs/android/ui/view/az;-><init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;I)V

    new-instance v0, Lcom/estrongs/android/ui/e/gq;

    invoke-direct {v0, p0, v4}, Lcom/estrongs/android/ui/e/gq;-><init>(Landroid/content/Context;Z)V

    const v2, 0x7f0b03ff

    const v3, 0x7f020277

    new-instance v4, Lcom/estrongs/android/pop/app/bi;

    invoke-direct {v4, p0}, Lcom/estrongs/android/pop/app/bi;-><init>(Lcom/estrongs/android/pop/app/HideListActivity;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/estrongs/android/ui/e/gq;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    const-string v2, "menu"

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/ui/view/az;->a(Ljava/lang/String;Lcom/estrongs/android/ui/e/a;)V

    const-string v0, "menu"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/view/az;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/HideListActivity;->b()V

    return-void

    :cond_1
    new-instance v0, Lcom/estrongs/android/pop/app/bk;

    const v1, 0x7f030062

    iget-object v2, p0, Lcom/estrongs/android/pop/app/HideListActivity;->d:[Lcom/estrongs/android/pop/utils/af;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/estrongs/android/pop/app/bk;-><init>(Lcom/estrongs/android/pop/app/HideListActivity;Landroid/content/Context;I[Lcom/estrongs/android/pop/utils/af;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->h:Lcom/estrongs/android/pop/app/bk;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/HideListActivity;->h:Lcom/estrongs/android/pop/app/bk;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/HideListActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/HideListActivity;->g:Z

    return p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/HideListActivity;[Lcom/estrongs/android/pop/utils/af;)[Lcom/estrongs/android/pop/utils/af;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/HideListActivity;->d:[Lcom/estrongs/android/pop/utils/af;

    return-object p1
.end method

.method private b()V
    .locals 2

    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/HideListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/estrongs/android/pop/app/bj;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/bj;-><init>(Lcom/estrongs/android/pop/app/HideListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/HideListActivity;)[Lcom/estrongs/android/pop/utils/af;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->d:[Lcom/estrongs/android/pop/utils/af;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/HideListActivity;)Lcom/estrongs/android/pop/app/bk;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->h:Lcom/estrongs/android/pop/app/bk;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/HideListActivity;)Lcom/estrongs/android/pop/utils/af;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->f:Lcom/estrongs/android/pop/utils/af;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->finish()V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->g:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03007c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/HideListActivity;->setContentView(I)V

    const v0, 0x7f08017d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/HideListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/HideListActivity;->c:Landroid/widget/FrameLayout;

    const v0, 0x7f08017e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/HideListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/HideListActivity;->a()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/HideListActivity;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
