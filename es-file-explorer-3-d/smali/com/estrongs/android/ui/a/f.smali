.class public Lcom/estrongs/android/ui/a/f;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:[Landroid/graphics/drawable/Drawable;

.field private d:[Ljava/lang/String;

.field private e:Lcom/estrongs/android/ui/theme/al;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/16 v0, 0x9

    iput v0, p0, Lcom/estrongs/android/ui/a/f;->b:I

    iput v3, p0, Lcom/estrongs/android/ui/a/f;->f:I

    iput-object p1, p0, Lcom/estrongs/android/ui/a/f;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/f;->e:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/a/f;->getCount()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/estrongs/android/ui/a/f;->c:[Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/f;->c:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/estrongs/android/ui/a/f;->e:Lcom/estrongs/android/ui/theme/al;

    const v2, 0x7f020297

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/estrongs/android/ui/a/f;->c:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/estrongs/android/ui/a/f;->e:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f020298

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/f;->c:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/estrongs/android/ui/a/f;->e:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f020299

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/f;->c:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/estrongs/android/ui/a/f;->e:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f02029a

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/f;->c:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/estrongs/android/ui/a/f;->e:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f02029b

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/f;->c:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/estrongs/android/ui/a/f;->e:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f02029c

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/f;->c:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/estrongs/android/ui/a/f;->e:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f020294

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/f;->c:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/estrongs/android/ui/a/f;->e:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f020295

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/f;->c:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/estrongs/android/ui/a/f;->e:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f020296

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/f;->d:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->C()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/a/f;->f:I

    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/ui/a/f;->f:I

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/a/f;->b:I

    return v0
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
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x40c00000    # 6.0f

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f08002f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/ui/a/f;->c:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/a/f;->a:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/ui/a/f;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v4, v1, v4, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    const v0, 0x7f0800b4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/a/f;->d:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/estrongs/android/ui/a/f;->f:I

    if-ne p1, v0, :cond_1

    const v0, 0x7f02019d

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-object p2

    :cond_1
    const v0, 0x7f0201a0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
