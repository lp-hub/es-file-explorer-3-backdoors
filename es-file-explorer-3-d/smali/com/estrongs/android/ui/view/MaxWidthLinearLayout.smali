.class public Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->a:I

    iput v0, p0, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->a:I

    iput v0, p0, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->a:I

    iput v0, p0, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->b:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->a:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->a:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->a:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->a:I

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->setMeasuredDimension(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->b:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->b:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->b:I

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->setMeasuredDimension(II)V

    :cond_1
    return-void
.end method
