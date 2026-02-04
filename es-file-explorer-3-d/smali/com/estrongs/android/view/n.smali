.class public Lcom/estrongs/android/view/n;
.super Ljava/lang/Object;


# static fields
.field public static b:Z

.field private static c:Lcom/estrongs/android/view/n;

.field private static h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/estrongs/android/view/x;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/estrongs/android/widget/SlidingDrawer;

.field private d:Z

.field private e:Landroid/app/Activity;

.field private f:Landroid/view/ViewGroup;

.field private g:Lcom/estrongs/android/ui/theme/al;

.field private i:Lcom/estrongs/android/view/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/view/n;->c:Lcom/estrongs/android/view/n;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/estrongs/android/view/n;->h:Ljava/util/LinkedList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/view/n;->b:Z

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/estrongs/android/view/n;->i:Lcom/estrongs/android/view/x;

    iput-object p1, p0, Lcom/estrongs/android/view/n;->e:Landroid/app/Activity;

    iget-object v0, p0, Lcom/estrongs/android/view/n;->e:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/n;->g:Lcom/estrongs/android/ui/theme/al;

    iget-object v0, p0, Lcom/estrongs/android/view/n;->e:Landroid/app/Activity;

    const v1, 0x7f0800a2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/ESViewStub;

    const v1, 0x7f030014

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/ESViewStub;->b(I)V

    const v1, 0x7f0800a3

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/ESViewStub;->a(I)V

    iget-object v1, p0, Lcom/estrongs/android/view/n;->e:Landroid/app/Activity;

    invoke-static {v1}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/ESViewStub;->a(Landroid/view/LayoutInflater;)V

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ESViewStub;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/SlidingDrawer;

    iput-object v0, p0, Lcom/estrongs/android/view/n;->a:Lcom/estrongs/android/widget/SlidingDrawer;

    iget-object v0, p0, Lcom/estrongs/android/view/n;->a:Lcom/estrongs/android/widget/SlidingDrawer;

    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0054

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/n;->a:Lcom/estrongs/android/widget/SlidingDrawer;

    const v1, 0x7f0800c8

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/estrongs/android/view/n;->f:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/estrongs/android/view/n;->a:Lcom/estrongs/android/widget/SlidingDrawer;

    const v1, 0x7f0800cd

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/view/n;->g:Lcom/estrongs/android/ui/theme/al;

    const v2, 0x7f02005b

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/estrongs/android/view/o;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/o;-><init>(Lcom/estrongs/android/view/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/n;->a:Lcom/estrongs/android/widget/SlidingDrawer;

    const v1, 0x7f0800ce

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/view/n;->g:Lcom/estrongs/android/ui/theme/al;

    const v2, 0x7f020053

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/estrongs/android/view/p;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/p;-><init>(Lcom/estrongs/android/view/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/n;->a:Lcom/estrongs/android/widget/SlidingDrawer;

    const v1, 0x7f0800cf

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/view/n;->g:Lcom/estrongs/android/ui/theme/al;

    const v2, 0x7f020087

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/estrongs/android/view/q;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/q;-><init>(Lcom/estrongs/android/view/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/n;->a:Lcom/estrongs/android/widget/SlidingDrawer;

    const v1, 0x7f0800ca

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-static {p1}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/q;->t()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v1, Lcom/estrongs/android/view/r;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/r;-><init>(Lcom/estrongs/android/view/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/estrongs/android/view/n;->a:Lcom/estrongs/android/widget/SlidingDrawer;

    const v2, 0x7f0800c9

    invoke-virtual {v1, v2}, Lcom/estrongs/android/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/view/n;->e:Landroid/app/Activity;

    invoke-static {v2}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v2

    const v3, 0x7f020056

    const v4, 0x7f02005e

    invoke-virtual {v2, v3, v4}, Lcom/estrongs/android/ui/theme/al;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/estrongs/android/view/s;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/view/s;-><init>(Lcom/estrongs/android/view/n;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/estrongs/android/view/n;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/estrongs/android/view/n;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    sget-object v0, Lcom/estrongs/android/view/n;->h:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/x;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/view/x;->a(Lcom/estrongs/android/view/n;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/view/n;->l()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/n;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/n;->e:Landroid/app/Activity;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)Lcom/estrongs/android/view/n;
    .locals 1

    sget-object v0, Lcom/estrongs/android/view/n;->c:Lcom/estrongs/android/view/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/view/n;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/n;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/estrongs/android/view/n;->c:Lcom/estrongs/android/view/n;

    :cond_0
    sget-object v0, Lcom/estrongs/android/view/n;->c:Lcom/estrongs/android/view/n;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/view/n;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/n;->f:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static g()V
    .locals 2

    sget-object v0, Lcom/estrongs/android/view/n;->c:Lcom/estrongs/android/view/n;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/android/view/n;->c:Lcom/estrongs/android/view/n;

    iget-boolean v0, v0, Lcom/estrongs/android/view/n;->d:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/android/view/n;->c:Lcom/estrongs/android/view/n;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/android/view/n;->d:Z

    sget-object v0, Lcom/estrongs/android/view/n;->c:Lcom/estrongs/android/view/n;

    iget-object v0, v0, Lcom/estrongs/android/view/n;->a:Lcom/estrongs/android/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/SlidingDrawer;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/view/n;->b:Z

    sget-object v0, Lcom/estrongs/android/view/n;->c:Lcom/estrongs/android/view/n;

    iget-object v0, v0, Lcom/estrongs/android/view/n;->a:Lcom/estrongs/android/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/SlidingDrawer;->c()V

    :cond_0
    sget-object v0, Lcom/estrongs/android/view/n;->c:Lcom/estrongs/android/view/n;

    iget-object v0, v0, Lcom/estrongs/android/view/n;->a:Lcom/estrongs/android/widget/SlidingDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/SlidingDrawer;->setVisibility(I)V

    sget-object v0, Lcom/estrongs/android/view/n;->c:Lcom/estrongs/android/view/n;

    invoke-virtual {v0}, Lcom/estrongs/android/view/n;->b()V

    sget-object v0, Lcom/estrongs/android/view/n;->c:Lcom/estrongs/android/view/n;

    invoke-virtual {v0}, Lcom/estrongs/android/view/n;->e()V

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/view/n;->c:Lcom/estrongs/android/view/n;

    return-void
.end method

.method public static j()V
    .locals 1

    sget-object v0, Lcom/estrongs/android/view/n;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method static synthetic k()Ljava/util/LinkedList;
    .locals 1

    sget-object v0, Lcom/estrongs/android/view/n;->h:Ljava/util/LinkedList;

    return-object v0
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/n;->a:Lcom/estrongs/android/widget/SlidingDrawer;

    new-instance v1, Lcom/estrongs/android/view/w;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/w;-><init>(Lcom/estrongs/android/view/n;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/SlidingDrawer;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/n;->e:Landroid/app/Activity;

    return-object v0
.end method

.method public a(Ljava/util/List;Z)Lcom/estrongs/android/view/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;Z)",
            "Lcom/estrongs/android/view/x;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/estrongs/android/view/x;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/android/view/x;-><init>(Lcom/estrongs/android/view/n;Ljava/util/List;Z)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/n;->a(Lcom/estrongs/android/view/x;)V

    sget-object v1, Lcom/estrongs/android/view/n;->h:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/estrongs/android/view/n;->i:Lcom/estrongs/android/view/x;

    invoke-direct {p0}, Lcom/estrongs/android/view/n;->l()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/estrongs/android/view/t;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/view/t;-><init>(Lcom/estrongs/android/view/n;Lcom/estrongs/android/view/n;Ljava/util/List;ZLjava/util/List;Z)V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/view/x;)V
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/estrongs/android/view/n;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/x;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/x;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    sget-object v0, Lcom/estrongs/android/view/n;->h:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/view/n;->i:Lcom/estrongs/android/view/x;

    iget-object v0, p0, Lcom/estrongs/android/view/n;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public b(Lcom/estrongs/android/view/x;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/estrongs/android/view/n;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lcom/estrongs/android/view/n;->h:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_3

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/estrongs/android/view/n;->i:Lcom/estrongs/android/view/x;

    if-ne v3, p1, :cond_0

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/estrongs/android/view/n;->i:Lcom/estrongs/android/view/x;

    :cond_0
    sget-object v3, Lcom/estrongs/android/view/n;->h:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/estrongs/android/view/n;->l()V

    if-nez v0, :cond_1

    sget-object v0, Lcom/estrongs/android/view/n;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/n;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_2

    const-string v3, "paste_mode"

    iget-object v0, p0, Lcom/estrongs/android/view/n;->e:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i:Lcom/estrongs/android/ui/view/az;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/az;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/n;->e:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i:Lcom/estrongs/android/ui/view/az;

    const-string v3, "normal_mode"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/estrongs/android/ui/view/az;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/estrongs/android/view/n;->e:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "normal_mode"

    iput-object v1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/view/n;->e:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-boolean v2, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->s:Z

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/n;->d:Z

    iget-object v0, p0, Lcom/estrongs/android/view/n;->a:Lcom/estrongs/android/widget/SlidingDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/SlidingDrawer;->setVisibility(I)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/n;->a:Lcom/estrongs/android/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/SlidingDrawer;->g()Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/n;->d:Z

    iget-object v0, p0, Lcom/estrongs/android/view/n;->a:Lcom/estrongs/android/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/SlidingDrawer;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/n;->a:Lcom/estrongs/android/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/SlidingDrawer;->c()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/n;->a:Lcom/estrongs/android/widget/SlidingDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/SlidingDrawer;->setVisibility(I)V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/n;->a:Lcom/estrongs/android/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/SlidingDrawer;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/n;->a:Lcom/estrongs/android/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/SlidingDrawer;->c()V

    :cond_0
    return-void
.end method

.method public h()I
    .locals 1

    sget-object v0, Lcom/estrongs/android/view/n;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public i()Lcom/estrongs/android/view/x;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/n;->i:Lcom/estrongs/android/view/x;

    return-object v0
.end method
