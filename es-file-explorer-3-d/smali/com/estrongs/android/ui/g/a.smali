.class public Lcom/estrongs/android/ui/g/a;
.super Lcom/estrongs/android/widget/au;


# static fields
.field private static g:Lcom/estrongs/android/ui/g/a;


# instance fields
.field private h:Lcom/estrongs/android/ui/a/ce;

.field private i:Lcom/estrongs/android/ui/theme/al;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/g/a;->g:Lcom/estrongs/android/ui/g/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ILandroid/graphics/Rect;Z)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/estrongs/android/widget/au;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ILandroid/graphics/Rect;Z)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/g/a;)Lcom/estrongs/android/ui/a/ce;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/g/a;->h:Lcom/estrongs/android/ui/a/ce;

    return-object v0
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;ILandroid/graphics/Rect;Z)Lcom/estrongs/android/ui/g/a;
    .locals 7

    sget-object v0, Lcom/estrongs/android/ui/g/a;->g:Lcom/estrongs/android/ui/g/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/g/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/ui/g/a;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/estrongs/android/ui/g/a;->g:Lcom/estrongs/android/ui/g/a;

    :cond_0
    sget-object v0, Lcom/estrongs/android/ui/g/a;->g:Lcom/estrongs/android/ui/g/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/g/a;->k()I

    move-result v0

    if-ne v0, p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/ui/g/a;->g:Lcom/estrongs/android/ui/g/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/g/a;->a()Landroid/content/Context;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    sget-object v0, Lcom/estrongs/android/ui/g/a;->g:Lcom/estrongs/android/ui/g/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/g/a;->i()V

    new-instance v0, Lcom/estrongs/android/ui/g/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/ui/g/a;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ILandroid/graphics/Rect;Z)V

    sput-object v0, Lcom/estrongs/android/ui/g/a;->g:Lcom/estrongs/android/ui/g/a;

    :cond_2
    sget-object v0, Lcom/estrongs/android/ui/g/a;->g:Lcom/estrongs/android/ui/g/a;

    return-object v0
.end method

.method public static d()V
    .locals 1

    sget-object v0, Lcom/estrongs/android/ui/g/a;->g:Lcom/estrongs/android/ui/g/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/g/a;->g:Lcom/estrongs/android/ui/g/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/g/a;->i()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/g/a;->g:Lcom/estrongs/android/ui/g/a;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/g/a;->e:Landroid/content/Context;

    return-object v0
.end method

.method public a(Lcom/estrongs/android/pop/view/dm;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/g/a;->h:Lcom/estrongs/android/ui/a/ce;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/a/ce;->a(Lcom/estrongs/android/pop/view/dm;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected b()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/g/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/g/a;->i:Lcom/estrongs/android/ui/theme/al;

    iget-object v0, p0, Lcom/estrongs/android/ui/g/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/ca;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f03009d

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/ui/g/a;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0803a0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/g/a;->j:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/g/a;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/g/a;->j:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/estrongs/android/ui/g/b;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/g/b;-><init>(Lcom/estrongs/android/ui/g/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08039f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/estrongs/android/ui/g/a;->k:Landroid/widget/ListView;

    new-instance v0, Lcom/estrongs/android/ui/a/ce;

    iget-object v2, p0, Lcom/estrongs/android/ui/g/a;->e:Landroid/content/Context;

    invoke-direct {v0, v2, v4}, Lcom/estrongs/android/ui/a/ce;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/estrongs/android/ui/g/a;->h:Lcom/estrongs/android/ui/a/ce;

    iget-object v0, p0, Lcom/estrongs/android/ui/g/a;->k:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/estrongs/android/ui/g/a;->h:Lcom/estrongs/android/ui/a/ce;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/g/a;->k:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/estrongs/android/ui/g/a;->h:Lcom/estrongs/android/ui/a/ce;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/g/a;->l()Landroid/widget/RelativeLayout;

    move-result-object v0

    const v2, 0x7f0802f3

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0b0052

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/ui/g/a;->a(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void

    :cond_0
    const v0, 0x7f0300ca

    goto :goto_0
.end method

.method public c()V
    .locals 3

    :try_start_0
    invoke-super {p0}, Lcom/estrongs/android/widget/au;->c()V

    iget-object v0, p0, Lcom/estrongs/android/ui/g/a;->e:Landroid/content/Context;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/g/a;->e:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/g/a;->h:Lcom/estrongs/android/ui/a/ce;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->ak()[Lcom/estrongs/android/util/ay;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/a/ce;->a([Lcom/estrongs/android/util/ay;)V

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/g/a;->h:Lcom/estrongs/android/ui/a/ce;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/a/ce;->a(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/g/a;->h:Lcom/estrongs/android/ui/a/ce;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/ce;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/estrongs/android/ui/g/a;->k:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/g/a;->h:Lcom/estrongs/android/ui/a/ce;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/a/ce;->a(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/g/a;->h:Lcom/estrongs/android/ui/a/ce;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/a/ce;->a([Lcom/estrongs/android/util/ay;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
