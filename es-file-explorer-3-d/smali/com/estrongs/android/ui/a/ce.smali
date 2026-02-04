.class public Lcom/estrongs/android/ui/a/ce;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field a:[Lcom/estrongs/android/util/ay;

.field b:[Lcom/estrongs/android/util/ay;

.field c:Lcom/estrongs/android/ui/theme/al;

.field d:Lcom/estrongs/android/pop/view/dm;

.field private e:Landroid/content/Context;

.field private f:Lcom/estrongs/android/ui/a/cg;

.field private g:Lcom/estrongs/android/ui/h/a;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/a/ce;->i:Z

    iput-object p1, p0, Lcom/estrongs/android/ui/a/ce;->e:Landroid/content/Context;

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/util/ax;->c()Lcom/estrongs/android/util/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/ax;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/ax;->c()Lcom/estrongs/android/util/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/ax;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/estrongs/android/util/ax;->c()Lcom/estrongs/android/util/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/ax;->e()[Lcom/estrongs/android/util/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/ce;->a:[Lcom/estrongs/android/util/ay;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/ce;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/ce;->c:Lcom/estrongs/android/ui/theme/al;

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/ui/a/ce;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/h/a;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/h/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/ce;->g:Lcom/estrongs/android/ui/h/a;

    new-instance v0, Lcom/estrongs/android/ui/a/cg;

    iget-object v1, p0, Lcom/estrongs/android/ui/a/ce;->g:Lcom/estrongs/android/ui/h/a;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/a/cg;-><init>(Lcom/estrongs/android/ui/h/a;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/a/ce;->f:Lcom/estrongs/android/ui/a/cg;

    invoke-direct {p0}, Lcom/estrongs/android/ui/a/ce;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private a(I)Lcom/estrongs/android/util/ay;
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/estrongs/android/ui/a/ce;->b:[Lcom/estrongs/android/util/ay;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/ce;->b:[Lcom/estrongs/android/util/ay;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/ce;->b:[Lcom/estrongs/android/util/ay;

    aget-object v0, v0, p1

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/estrongs/android/util/ay;->c:Z

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/a/ce;->b:[Lcom/estrongs/android/util/ay;

    array-length v0, v0

    :cond_1
    iget-boolean v2, p0, Lcom/estrongs/android/ui/a/ce;->h:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/estrongs/android/ui/a/ce;->i:Z

    if-eqz v2, :cond_3

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/a/ce;->f:Lcom/estrongs/android/ui/a/cg;

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    :cond_3
    iget-object v2, p0, Lcom/estrongs/android/ui/a/ce;->a:[Lcom/estrongs/android/util/ay;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/estrongs/android/ui/a/ce;->a:[Lcom/estrongs/android/util/ay;

    sub-int v0, p1, v0

    aget-object v0, v2, v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/estrongs/android/util/ay;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/a/ce;->g:Lcom/estrongs/android/ui/h/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/h/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/ce;->f:Lcom/estrongs/android/ui/a/cg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/ce;->f:Lcom/estrongs/android/ui/a/cg;

    iget-object v1, p0, Lcom/estrongs/android/ui/a/ce;->g:Lcom/estrongs/android/ui/h/a;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/a/cg;->a(Lcom/estrongs/android/ui/h/a;)Lcom/estrongs/android/ui/h/c;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/estrongs/android/ui/a/ce;->i:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/a/ce;->i:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/a/ce;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/a/ce;->c()V

    return-void
.end method

.method private a(Lcom/estrongs/android/ui/h/c;)V
    .locals 2

    invoke-virtual {p1}, Lcom/estrongs/android/ui/h/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "action_recomm_pcs"

    invoke-virtual {p1}, Lcom/estrongs/android/ui/h/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ui/a/ce;->b()V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/a/ce;->e:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/estrongs/android/ui/h/c;->h(Landroid/content/Context;)V

    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/h/h;

    iget-object v1, p0, Lcom/estrongs/android/ui/a/ce;->e:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/estrongs/android/ui/h/h;-><init>(Landroid/content/Context;Lcom/estrongs/android/ui/h/c;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/h/h;->a()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/estrongs/android/ui/h/h;

    iget-object v1, p0, Lcom/estrongs/android/ui/a/ce;->e:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/estrongs/android/ui/h/h;-><init>(Landroid/content/Context;Lcom/estrongs/android/ui/h/c;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/h/h;->a()V

    goto :goto_0
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/estrongs/android/ui/a/ce;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->c()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/pcs/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/a/ce;->e:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/ui/pcs/a;-><init>(Landroid/content/Context;Z)V

    new-instance v1, Lcom/estrongs/android/ui/a/cf;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/a/cf;-><init>(Lcom/estrongs/android/ui/a/ce;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/a;->a(Lcom/estrongs/android/ui/pcs/v;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/a;->a()V

    goto :goto_0
.end method

.method private c()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/estrongs/android/pop/m;->I:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/estrongs/android/util/ak;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/files/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ar;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/view/dm;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/ce;->d:Lcom/estrongs/android/pop/view/dm;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/a/ce;->h:Z

    return-void
.end method

.method public a([Lcom/estrongs/android/util/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/ce;->b:[Lcom/estrongs/android/util/ay;

    return-void
.end method

.method public getCount()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/ui/a/ce;->a:[Lcom/estrongs/android/util/ay;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/a/ce;->a:[Lcom/estrongs/android/util/ay;

    array-length v1, v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/a/ce;->b:[Lcom/estrongs/android/util/ay;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/a/ce;->b:[Lcom/estrongs/android/util/ay;

    array-length v1, v1

    add-int/2addr v0, v1

    :cond_1
    :try_start_0
    iget-boolean v1, p0, Lcom/estrongs/android/ui/a/ce;->h:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/estrongs/android/ui/a/ce;->i:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const v7, 0x7f02003c

    const/4 v10, 0x1

    const/16 v6, 0x8

    const/4 v9, 0x2

    const/4 v8, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/ce;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030076

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f080257

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f080258

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080259

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/a/ce;->a(I)Lcom/estrongs/android/util/ay;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    :goto_0
    return-object p2

    :cond_2
    instance-of v3, v4, Lcom/estrongs/android/ui/a/cg;

    if-eqz v3, :cond_3

    move-object v3, v4

    check-cast v3, Lcom/estrongs/android/ui/a/cg;

    iget-object v5, p0, Lcom/estrongs/android/ui/a/ce;->g:Lcom/estrongs/android/ui/h/a;

    invoke-virtual {v3, v5}, Lcom/estrongs/android/ui/a/cg;->a(Lcom/estrongs/android/ui/h/a;)Lcom/estrongs/android/ui/h/c;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/estrongs/android/ui/a/ce;->e:Landroid/content/Context;

    invoke-virtual {v3, v5}, Lcom/estrongs/android/ui/h/c;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    check-cast v4, Lcom/estrongs/android/ui/a/cg;

    invoke-static {v4}, Lcom/estrongs/android/ui/a/cg;->a(Lcom/estrongs/android/ui/a/cg;)Lcom/estrongs/android/ui/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/h/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-boolean v3, v4, Lcom/estrongs/android/util/ay;->c:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/estrongs/android/ui/a/ce;->c:Lcom/estrongs/android/ui/theme/al;

    iget v5, v4, Lcom/estrongs/android/util/ay;->f:I

    invoke-virtual {v3, v5}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v4, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v4, Lcom/estrongs/android/util/ay;->e:Ljava/lang/String;

    iget-boolean v2, v4, Lcom/estrongs/android/util/ay;->d:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/estrongs/android/ui/a/ce;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/q;->P()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (%s/%s)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v4, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/fs/c/d;->k(Ljava/lang/String;)[J

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    aget-wide v4, v2, v8

    aget-wide v6, v2, v10

    sub-long/2addr v4, v6

    aget-wide v6, v2, v9

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/estrongs/fs/c/d;->c(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    aget-wide v4, v2, v8

    aget-wide v6, v2, v9

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/estrongs/fs/c/d;->c(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v10

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget-object v3, v4, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/estrongs/android/ui/a/ce;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v3

    iget-object v5, v4, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/d/d;->d(Lcom/estrongs/fs/g;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v0, v4, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    iget-object v0, v4, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lcom/estrongs/android/util/ak;->ao(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0201a0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v3, v4, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v4, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->aq(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/estrongs/fs/l;->E:Lcom/estrongs/fs/l;

    invoke-virtual {v3}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/d/d;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_8
    sget-object v3, Lcom/estrongs/fs/l;->D:Lcom/estrongs/fs/l;

    invoke-virtual {v3}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/d/d;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_9
    iget-object v3, v4, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/av;->a(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/d/d;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v4, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->ae(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public notifyDataSetChanged()V
    .locals 2

    invoke-static {}, Lcom/estrongs/android/util/ax;->c()Lcom/estrongs/android/util/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/ax;->e()[Lcom/estrongs/android/util/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/ce;->a:[Lcom/estrongs/android/util/ay;

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/a/ce;->g:Lcom/estrongs/android/ui/h/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/ce;->g:Lcom/estrongs/android/ui/h/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/h/a;->a(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/ui/a/ce;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/estrongs/android/ui/a/ce;->a(I)Lcom/estrongs/android/util/ay;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v1, v2, Lcom/estrongs/android/ui/a/cg;

    if-eqz v1, :cond_2

    :try_start_0
    move-object v0, v2

    check-cast v0, Lcom/estrongs/android/ui/a/cg;

    move-object v1, v0

    iget-object v3, p0, Lcom/estrongs/android/ui/a/ce;->g:Lcom/estrongs/android/ui/h/a;

    invoke-virtual {v1, v3}, Lcom/estrongs/android/ui/a/cg;->a(Lcom/estrongs/android/ui/h/a;)Lcom/estrongs/android/ui/h/c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/a/ce;->a(Lcom/estrongs/android/ui/h/c;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/a/ce;->f:Lcom/estrongs/android/ui/a/cg;

    iget-object v3, p0, Lcom/estrongs/android/ui/a/ce;->g:Lcom/estrongs/android/ui/h/a;

    invoke-virtual {v1, v3}, Lcom/estrongs/android/ui/a/cg;->b(Lcom/estrongs/android/ui/h/a;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/a/ce;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/ui/a/ce;->d:Lcom/estrongs/android/pop/view/dm;

    iget-object v2, v2, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/estrongs/android/pop/view/dm;->a(Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/ui/a/ce;->d:Lcom/estrongs/android/pop/view/dm;

    iget-object v2, v2, Lcom/estrongs/android/util/ay;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/estrongs/android/pop/view/dm;->a(Ljava/lang/String;Z)V

    goto :goto_1
.end method
