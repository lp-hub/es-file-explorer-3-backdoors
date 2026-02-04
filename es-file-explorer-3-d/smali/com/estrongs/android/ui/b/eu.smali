.class Lcom/estrongs/android/ui/b/eu;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:[Landroid/graphics/drawable/Drawable;

.field private d:Lcom/estrongs/android/ui/theme/al;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/estrongs/android/ui/b/eu;->b:I

    iput-object p1, p0, Lcom/estrongs/android/ui/b/eu;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/eu;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/b/eu;->d:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/b/eu;->getCount()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/eu;->c:[Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/eu;->c:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/ui/b/eu;->d:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f020284

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/eu;->c:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/eu;->d:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f02028a

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/eu;->c:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/estrongs/android/ui/b/eu;->d:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f020286

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/eu;->c:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/estrongs/android/ui/b/eu;->d:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f020285

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/eu;->c:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/estrongs/android/ui/b/eu;->d:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f02028b

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/eu;->c:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/estrongs/android/ui/b/eu;->d:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f020287

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/b/eu;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/b/eu;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->a(Landroid/content/Context;)I

    move-result v2

    sget-object v0, Lcom/estrongs/android/ui/b/ba;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/p;

    iget-object v1, v0, Lcom/estrongs/android/util/p;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lcom/estrongs/android/util/p;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/b/eu;->e:I

    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/b/eu;->b:I

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

    const/high16 v3, 0x41200000    # 10.0f

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/eu;->a:Landroid/content/Context;

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

    iget-object v1, p0, Lcom/estrongs/android/ui/b/eu;->c:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/b/eu;->a:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/eu;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v4, v1, v4, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    const v0, 0x7f0800b4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget v0, p0, Lcom/estrongs/android/ui/b/eu;->e:I

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
