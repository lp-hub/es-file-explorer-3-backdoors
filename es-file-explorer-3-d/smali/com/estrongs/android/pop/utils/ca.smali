.class public Lcom/estrongs/android/pop/utils/ca;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 9

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    mul-double/2addr v1, v5

    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v3, v3

    mul-double/2addr v3, v5

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v5, v0

    div-double/2addr v3, v5

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double v0, v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x401a000000000000L    # 6.5

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
