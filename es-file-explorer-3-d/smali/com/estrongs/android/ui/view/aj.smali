.class Lcom/estrongs/android/ui/view/aj;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/IndicatorView;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/graphics/drawable/NinePatchDrawable;

.field private j:F


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/view/IndicatorView;Lcom/estrongs/android/ui/d/d;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/estrongs/android/ui/view/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/view/aj;->f:I

    invoke-virtual {p1}, Lcom/estrongs/android/ui/view/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/view/aj;->g:I

    invoke-virtual {p0, p2}, Lcom/estrongs/android/ui/view/aj;->a(Lcom/estrongs/android/ui/d/d;)V

    return-void
.end method

.method private a(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const v0, 0x7f0200ec

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :pswitch_1
    const v0, 0x7f0200e3

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0200e6

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0200e7

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0200ea

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0200de

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0200e1

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0200e5

    goto :goto_0

    :pswitch_8
    const v0, 0x7f0200e8

    goto :goto_0

    :pswitch_9
    const v0, 0x7f0200e9

    goto :goto_0

    :pswitch_a
    const v0, 0x7f0200ed

    goto :goto_0

    :pswitch_b
    const v0, 0x7f0200eb

    goto :goto_0

    :pswitch_c
    const v0, 0x7f0200e2

    goto :goto_0

    :pswitch_d
    const v0, 0x7f0200e4

    goto :goto_0

    :pswitch_e
    const v0, 0x7f0200df

    goto :goto_0

    :pswitch_f
    const v0, 0x7f0200e0

    goto :goto_0

    :pswitch_10
    const v0, 0x7f0200ee

    goto :goto_0

    :pswitch_11
    const v0, 0x7f0200ef

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_b
        :pswitch_d
        :pswitch_2
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/aj;)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/aj;->g()Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    return-object v0
.end method

.method private b(I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0051

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b001c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0050

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b004e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b004d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b004f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00a3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b005b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0379

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b005c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0059

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0058

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0446

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0131

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b030d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b017b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b03d8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b03d9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_12
    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b040a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_13
    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0111

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_14
    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b042c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method static synthetic b(Lcom/estrongs/android/ui/view/aj;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->c:Ljava/lang/String;

    return-object v0
.end method

.method private g()Landroid/graphics/drawable/NinePatchDrawable;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->i:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020113

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/aj;->i:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->i:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->i:Landroid/graphics/drawable/NinePatchDrawable;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    iget v0, p0, Lcom/estrongs/android/ui/view/aj;->h:I

    int-to-float v0, v0

    iget v1, p0, Lcom/estrongs/android/ui/view/aj;->f:I

    iget v2, p0, Lcom/estrongs/android/ui/view/aj;->e:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/estrongs/android/ui/view/aj;->j:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/view/aj;->j:F

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/d/d;)V
    .locals 2

    invoke-virtual {p1}, Lcom/estrongs/android/ui/d/d;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/view/aj;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/aj;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Lcom/estrongs/android/ui/d/d;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/view/aj;->b(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/aj;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/view/aj;->d:I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/aj;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/IndicatorView;->a(Lcom/estrongs/android/ui/view/IndicatorView;)Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/ui/view/aj;->e:I

    iget v0, p0, Lcom/estrongs/android/ui/view/aj;->g:I

    iget v1, p0, Lcom/estrongs/android/ui/view/aj;->d:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/estrongs/android/ui/view/aj;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/estrongs/android/ui/view/aj;->h:I

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/view/aj;->g:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/view/aj;->f:I

    return v0
.end method

.method public d()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget v0, p0, Lcom/estrongs/android/ui/view/aj;->j:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/estrongs/android/ui/view/IndicatorView;->b()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->b:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/aj;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/estrongs/android/ui/view/IndicatorView;->c()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    iget v0, p0, Lcom/estrongs/android/ui/view/aj;->j:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    iget v0, p0, Lcom/estrongs/android/ui/view/aj;->j:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
