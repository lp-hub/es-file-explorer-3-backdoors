.class public Lcom/estrongs/android/pop/esclasses/ESImageView;
.super Landroid/widget/ImageView;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected finalize()V
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/d/d;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v2, v0, 0x3

    div-int/lit8 v1, v1, 0x3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->a:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    sub-int v4, v0, v1

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v2, v0, 0x3

    div-int/lit8 v3, v1, 0x3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->b:Landroid/graphics/drawable/Drawable;

    sub-int v4, v1, v2

    sub-int v2, v0, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "recycled bitmap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/fs/g;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/d/d;->b(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    new-array v1, v6, [Z

    aput-boolean v5, v1, v5

    invoke-static {v0, v5, v1}, Lcom/estrongs/android/d/d;->a(Lcom/estrongs/fs/g;Z[Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/esclasses/ESImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/estrongs/android/d/d;->f(Lcom/estrongs/fs/g;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v6}, Lcom/estrongs/android/d/d;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v2, v0, 0x3

    div-int/lit8 v1, v1, 0x3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->a:Landroid/graphics/drawable/Drawable;

    sub-int v3, v0, v1

    invoke-virtual {v2, v5, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v2, v0, 0x3

    div-int/lit8 v3, v1, 0x3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->b:Landroid/graphics/drawable/Drawable;

    sub-int v4, v1, v2

    sub-int v2, v0, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->a:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->a:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->a:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method
