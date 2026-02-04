.class public Lcom/estrongs/android/pop/app/diskusage/a;
.super Lcom/estrongs/android/ui/b/ag;


# instance fields
.field a:Ljava/lang/String;

.field private b:Lcom/estrongs/android/pop/app/diskusage/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/diskusage/e;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/b/ag;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/diskusage/a;->b:Lcom/estrongs/android/pop/app/diskusage/e;

    const v0, 0x7f0b02a8

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/a;->setTitle(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0101

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/a;->a()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 10

    const/4 v0, 0x6

    const/4 v3, 0x0

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    new-array v5, v0, [I

    fill-array-data v5, :array_1

    new-array v6, v0, [I

    fill-array-data v6, :array_2

    new-array v7, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0128

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v7, v3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0129

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v7, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->mContext:Landroid/content/Context;

    const v2, 0x7f0b012a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v7, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->mContext:Landroid/content/Context;

    const v2, 0x7f0b012b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v7, v1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->mContext:Landroid/content/Context;

    const v2, 0x7f0b012c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v7, v1

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->mContext:Landroid/content/Context;

    const v2, 0x7f0b012d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v7, v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030037

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move v2, v3

    :goto_0
    array-length v1, v4

    if-ge v2, v1, :cond_0

    aget v1, v5, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    aget v8, v4, v2

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    const v1, 0x7f080139

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/a;->b:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/diskusage/e;->c(Z)[J

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2, v4}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->a([J[I)V

    :goto_1
    array-length v1, v7

    if-ge v3, v1, :cond_1

    aget v1, v6, v3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v7, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v8, v2, v3

    invoke-static {v8, v9}, Lcom/estrongs/fs/c/d;->c(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const v1, 0x7f080137

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/a;->mContext:Landroid/content/Context;

    const v5, 0x7f0b00f7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-wide v4, v2, v4

    invoke-static {v4, v5}, Lcom/estrongs/fs/c/d;->c(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-wide v4, v2, v4

    invoke-static {v4, v5}, Lcom/estrongs/fs/c/d;->d(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/a;->setContentView(Landroid/view/View;)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x6400
        -0xce5c53
        -0x3ba541
        -0x65fdff
        -0x7d48bd
        -0x30100
    .end array-data

    :array_1
    .array-data 4
        0x7f08013a
        0x7f08013c
        0x7f08013e
        0x7f080140
        0x7f080142
        0x7f080144
    .end array-data

    :array_2
    .array-data 4
        0x7f08013b
        0x7f08013d
        0x7f08013f
        0x7f080141
        0x7f080143
        0x7f080145
    .end array-data
.end method
