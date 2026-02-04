.class public Lcom/estrongs/android/ui/a/g;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/estrongs/android/pop/app/diskusage/b;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lcom/estrongs/android/ui/theme/al;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/diskusage/b;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/g;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/a/g;->d:Z

    iput-object p1, p0, Lcom/estrongs/android/ui/a/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/ui/a/g;->b:Lcom/estrongs/android/pop/app/diskusage/b;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/g;->e:Lcom/estrongs/android/ui/theme/al;

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/diskusage/b;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/g;->b:Lcom/estrongs/android/pop/app/diskusage/b;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/estrongs/android/ui/a/g;->c:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/a/g;->d:Z

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/g;->b:Lcom/estrongs/android/pop/app/diskusage/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/g;->b:Lcom/estrongs/android/pop/app/diskusage/b;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/diskusage/b;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/g;->b:Lcom/estrongs/android/pop/app/diskusage/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/g;->b:Lcom/estrongs/android/pop/app/diskusage/b;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/diskusage/b;->c(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030074

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/a/h;

    if-nez v0, :cond_5

    new-instance v1, Lcom/estrongs/android/ui/a/h;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/a/h;-><init>(Lcom/estrongs/android/ui/a/g;)V

    const v0, 0x7f08024d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/estrongs/android/ui/a/h;->a:Landroid/widget/ImageView;

    const v0, 0x7f08024e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/UsageImageView;

    iput-object v0, v1, Lcom/estrongs/android/ui/a/h;->b:Lcom/estrongs/android/widget/UsageImageView;

    const v0, 0x7f08024f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/estrongs/android/ui/a/h;->c:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/estrongs/android/ui/a/h;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/g;->e:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/theme/al;->h()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f080250

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/estrongs/android/ui/a/h;->d:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/estrongs/android/ui/a/h;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/g;->e:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/theme/al;->h()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f080251

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/estrongs/android/ui/a/h;->e:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/estrongs/android/ui/a/h;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/g;->e:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/theme/al;->h()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f080252

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/estrongs/android/ui/a/h;->f:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/estrongs/android/ui/a/h;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/g;->e:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/theme/al;->h()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f080088

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/estrongs/android/ui/a/h;->g:Landroid/widget/CheckBox;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/a/g;->b:Lcom/estrongs/android/pop/app/diskusage/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/g;->b:Lcom/estrongs/android/pop/app/diskusage/b;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/diskusage/b;->b(I)V

    iget-object v2, v1, Lcom/estrongs/android/ui/a/h;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/g;->b:Lcom/estrongs/android/pop/app/diskusage/b;

    sget-object v3, Lcom/estrongs/android/pop/app/diskusage/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/diskusage/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v1, Lcom/estrongs/android/ui/a/h;->b:Lcom/estrongs/android/widget/UsageImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/g;->b:Lcom/estrongs/android/pop/app/diskusage/b;

    sget-object v3, Lcom/estrongs/android/pop/app/diskusage/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/diskusage/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/estrongs/android/widget/UsageImageView;->a(F)V

    iget-object v0, v1, Lcom/estrongs/android/ui/a/h;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/g;->b:Lcom/estrongs/android/pop/app/diskusage/b;

    sget-object v3, Lcom/estrongs/android/pop/app/diskusage/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/diskusage/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/estrongs/android/ui/a/h;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/g;->b:Lcom/estrongs/android/pop/app/diskusage/b;

    sget-object v3, Lcom/estrongs/android/pop/app/diskusage/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/diskusage/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/estrongs/android/ui/a/h;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/g;->b:Lcom/estrongs/android/pop/app/diskusage/b;

    sget-object v3, Lcom/estrongs/android/pop/app/diskusage/b;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/diskusage/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/estrongs/android/ui/a/h;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/g;->b:Lcom/estrongs/android/pop/app/diskusage/b;

    sget-object v3, Lcom/estrongs/android/pop/app/diskusage/b;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/diskusage/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    iget-boolean v5, p0, Lcom/estrongs/android/ui/a/g;->d:Z

    if-eqz v5, :cond_4

    iget-object v5, v1, Lcom/estrongs/android/ui/a/h;->g:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v5, p0, Lcom/estrongs/android/ui/a/g;->c:Ljava/util/List;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/estrongs/android/ui/a/g;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    iget-object v1, v1, Lcom/estrongs/android/ui/a/h;->g:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-eqz v5, :cond_3

    const v1, 0x7f02010b

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    :goto_1
    invoke-virtual {p2, v0, v3, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    return-object p2

    :cond_3
    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    iget-object v1, v1, Lcom/estrongs/android/ui/a/h;->g:Landroid/widget/CheckBox;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto/16 :goto_0
.end method
