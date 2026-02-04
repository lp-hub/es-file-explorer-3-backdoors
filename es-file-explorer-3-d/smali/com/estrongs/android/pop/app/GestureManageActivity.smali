.class public Lcom/estrongs/android/pop/app/GestureManageActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field private b:Lcom/estrongs/android/ui/a/o;

.field private c:Lcom/estrongs/android/pop/q;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/GestureManageActivity;)Lcom/estrongs/android/ui/a/o;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->b:Lcom/estrongs/android/ui/a/o;

    return-object v0
.end method

.method private a()V
    .locals 7

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->a:Landroid/widget/FrameLayout;

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03004f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const v0, 0x7f08017b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/al;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0801f8

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b03f4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0800f6

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/estrongs/android/ui/a/o;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/a/o;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->b:Lcom/estrongs/android/ui/a/o;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->b:Lcom/estrongs/android/ui/a/o;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v1, 0x7f0800d3

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/GestureManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->c:Lcom/estrongs/android/pop/q;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->al()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->d:Landroid/widget/TextView;

    const v2, 0x7f0b03fb

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const v0, 0x7f08017a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/estrongs/android/ui/view/az;

    invoke-direct {v2, p0, v0, v4}, Lcom/estrongs/android/ui/view/az;-><init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;I)V

    new-instance v0, Lcom/estrongs/android/ui/e/gq;

    invoke-direct {v0, p0, v4}, Lcom/estrongs/android/ui/e/gq;-><init>(Landroid/content/Context;Z)V

    new-instance v3, Lcom/estrongs/android/view/a/a;

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v4

    const v5, 0x7f02026b

    invoke-virtual {v4, v5}, Lcom/estrongs/android/ui/theme/al;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0b03f8

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/app/GestureManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v4, Lcom/estrongs/android/pop/app/az;

    invoke-direct {v4, p0}, Lcom/estrongs/android/pop/app/az;-><init>(Lcom/estrongs/android/pop/app/GestureManageActivity;)V

    invoke-virtual {v3, v4}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/e/gq;->a(Lcom/estrongs/android/view/a/a;)V

    invoke-virtual {v3, v1}, Lcom/estrongs/android/view/a/a;->d(Z)Lcom/estrongs/android/view/a/a;

    new-instance v4, Lcom/estrongs/android/view/a/a;

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v5

    const v6, 0x7f020272

    invoke-virtual {v5, v6}, Lcom/estrongs/android/ui/theme/al;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const v6, 0x7f0b0404

    invoke-virtual {p0, v6}, Lcom/estrongs/android/pop/app/GestureManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v5, Lcom/estrongs/android/pop/app/bc;

    invoke-direct {v5, p0}, Lcom/estrongs/android/pop/app/bc;-><init>(Lcom/estrongs/android/pop/app/GestureManageActivity;)V

    invoke-virtual {v4, v5}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/e/gq;->a(Lcom/estrongs/android/view/a/a;)V

    invoke-virtual {v4, v1}, Lcom/estrongs/android/view/a/a;->d(Z)Lcom/estrongs/android/view/a/a;

    const-string v5, "add"

    invoke-virtual {v2, v5, v0}, Lcom/estrongs/android/ui/view/az;->a(Ljava/lang/String;Lcom/estrongs/android/ui/e/a;)V

    const-string v0, "add"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lcom/estrongs/android/ui/view/az;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    const v0, 0x7f0801f9

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/SimpleSwitchButton;

    new-instance v2, Lcom/estrongs/android/pop/app/bd;

    invoke-direct {v2, p0, v3, v4}, Lcom/estrongs/android/pop/app/bd;-><init>(Lcom/estrongs/android/pop/app/GestureManageActivity;Lcom/estrongs/android/view/a/a;Lcom/estrongs/android/view/a/a;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/SimpleSwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/SimpleSwitchButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->b:Lcom/estrongs/android/ui/a/o;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/a/o;->a(Z)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->b()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->d:Landroid/widget/TextView;

    const v2, 0x7f0b0409

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/GestureManageActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()V
    .locals 2

    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/estrongs/android/pop/app/be;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/be;-><init>(Lcom/estrongs/android/pop/app/GestureManageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/GestureManageActivity;)Lcom/estrongs/android/pop/q;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->c:Lcom/estrongs/android/pop/q;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03007c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->setContentView(I)V

    const v0, 0x7f08017d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->a:Landroid/widget/FrameLayout;

    const v0, 0x7f08017e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/GestureManageActivity;->c:Lcom/estrongs/android/pop/q;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->a()V

    return-void
.end method
