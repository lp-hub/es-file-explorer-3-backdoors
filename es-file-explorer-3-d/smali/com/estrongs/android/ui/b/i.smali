.class Lcom/estrongs/android/ui/b/i;
.super Landroid/widget/BaseAdapter;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field final synthetic c:Lcom/estrongs/android/ui/b/f;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/b/f;Z)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/ui/b/i;->c:Lcom/estrongs/android/ui/b/f;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/b/i;->b:Z

    iput-boolean p2, p0, Lcom/estrongs/android/ui/b/i;->b:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/estrongs/android/ui/b/i;->a:Ljava/util/List;

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/i;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/i;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v2, 0x0

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/i;->c:Lcom/estrongs/android/ui/b/f;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030005

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/estrongs/android/ui/b/k;

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/b/k;-><init>(Lcom/estrongs/android/ui/b/g;)V

    const v0, 0x7f08002f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/estrongs/android/ui/b/k;->a:Landroid/widget/ImageView;

    const v0, 0x7f080030

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/estrongs/android/ui/b/k;->b:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/estrongs/android/ui/b/k;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/i;->c:Lcom/estrongs/android/ui/b/f;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/f;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v2

    const v3, 0x7f090012

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f080031

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/estrongs/android/ui/b/k;->c:Landroid/widget/ImageView;

    iget-object v0, v1, Lcom/estrongs/android/ui/b/k;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/i;->c:Lcom/estrongs/android/ui/b/f;

    iget-object v2, v2, Lcom/estrongs/android/ui/b/f;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/i;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/i;->c:Lcom/estrongs/android/ui/b/f;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/f;->a(Lcom/estrongs/android/ui/b/f;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/estrongs/android/ui/b/i;->c:Lcom/estrongs/android/ui/b/f;

    iget-object v3, v3, Lcom/estrongs/android/ui/b/f;->b:Landroid/content/pm/PackageManager;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/android/ui/b/i;->c:Lcom/estrongs/android/ui/b/f;

    invoke-static {v3}, Lcom/estrongs/android/ui/b/f;->a(Lcom/estrongs/android/ui/b/f;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "appInfo.packageName"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_1
    iget-object v3, v2, Lcom/estrongs/android/ui/b/k;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :try_start_1
    iget-object v3, p0, Lcom/estrongs/android/ui/b/i;->c:Lcom/estrongs/android/ui/b/f;

    iget-object v3, v3, Lcom/estrongs/android/ui/b/f;->b:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/estrongs/android/ui/b/i;->c:Lcom/estrongs/android/ui/b/f;

    iget-object v4, v4, Lcom/estrongs/android/ui/b/f;->b:Landroid/content/pm/PackageManager;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :goto_2
    iget-object v3, v2, Lcom/estrongs/android/ui/b/k;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v2, Lcom/estrongs/android/ui/b/k;->c:Landroid/widget/ImageView;

    new-instance v3, Lcom/estrongs/android/ui/b/j;

    invoke-direct {v3, p0, v0, v1}, Lcom/estrongs/android/ui/b/j;-><init>(Lcom/estrongs/android/ui/b/i;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/b/k;

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_1
.end method
