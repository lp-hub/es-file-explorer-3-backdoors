.class public Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Lcom/estrongs/android/ui/theme/al;

.field private c:Landroid/view/View;

.field private d:Lcom/estrongs/android/pop/view/utils/v;

.field private e:Lcom/estrongs/android/pop/app/hu;

.field private f:I

.field private g:Z

.field private h:Landroid/os/Handler;

.field private i:Landroid/widget/Gallery;

.field private j:Landroid/view/View$OnClickListener;

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->g:Z

    new-instance v0, Lcom/estrongs/android/pop/app/hs;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/hs;-><init>(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->j:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/estrongs/android/pop/app/ht;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/ht;-><init>(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->k:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)Lcom/estrongs/android/pop/view/utils/v;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    return-object v0
.end method

.method private a()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/v;->l:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/v;->l:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/v;->l:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/v;->l:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->b(I)V

    return-void
.end method

.method private b()V
    .locals 10

    const v0, 0x7f080325

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f080327

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f080328

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->b:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v3}, Lcom/estrongs/android/ui/theme/al;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v3, 0x7f080329

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->b:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v4}, Lcom/estrongs/android/ui/theme/al;->h()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v4, 0x7f08032a

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    const v5, 0x7f08032b

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const v6, 0x7f080326

    invoke-virtual {p0, v6}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->b:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v7}, Lcom/estrongs/android/ui/theme/al;->h()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v7, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget v7, v7, Lcom/estrongs/android/pop/view/utils/v;->q:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    const v0, 0x7f0b0019

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget-wide v0, v0, Lcom/estrongs/android/pop/view/utils/v;->t:J

    iget-object v5, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget-wide v5, v5, Lcom/estrongs/android/pop/view/utils/v;->u:J

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v6}, Lcom/estrongs/fs/c/d;->c(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0, v1}, Lcom/estrongs/fs/c/d;->c(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v7, 0x0

    cmp-long v2, v0, v7

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x3e8

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    div-long v0, v5, v0

    long-to-int v0, v0

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget v7, v7, Lcom/estrongs/android/pop/view/utils/v;->q:I

    if-nez v7, :cond_9

    const v7, 0x7f0b0072

    invoke-virtual {p0, v7}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x3e8

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const-string v2, "0%"

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget v2, v2, Lcom/estrongs/android/pop/view/utils/v;->v:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/view/utils/n;->b(Lcom/estrongs/android/pop/view/utils/v;)I

    move-result v3

    iput v3, v2, Lcom/estrongs/android/pop/view/utils/v;->v:I

    :cond_3
    iget-object v2, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget v2, v2, Lcom/estrongs/android/pop/view/utils/v;->v:I

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget v2, v2, Lcom/estrongs/android/pop/view/utils/v;->v:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    :cond_4
    iget-object v2, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/utils/v;->e:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/utils/v;->e:Ljava/lang/String;

    const-string v3, "market://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x7f0b0113

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const v2, 0x7f020060

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_5
    :goto_3
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/v;->c:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    const v2, 0x7f0b001a

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget v2, v2, Lcom/estrongs/android/pop/view/utils/v;->v:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    const v2, 0x7f0b0114

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f020060

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_3

    :cond_8
    iget-object v2, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget v2, v2, Lcom/estrongs/android/pop/view/utils/v;->v:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    const v2, 0x7f0b0115

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f020062

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const v0, 0x7f0b0118

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget-wide v0, v0, Lcom/estrongs/android/pop/view/utils/v;->t:J

    iget-object v2, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget-wide v6, v2, Lcom/estrongs/android/pop/view/utils/v;->u:J

    const-wide/16 v8, 0x0

    cmp-long v2, v0, v8

    if-nez v2, :cond_a

    const/4 v0, 0x0

    :goto_4
    const/16 v1, 0x3e8

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0040

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f020060

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_1

    :cond_a
    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    div-long v0, v6, v0

    long-to-int v0, v0

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget-wide v0, v0, Lcom/estrongs/android/pop/view/utils/v;->t:J

    invoke-static {v0, v1}, Lcom/estrongs/fs/c/d;->c(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x3e8

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    const/16 v0, 0x3e8

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    const-string v0, "100%"

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0117

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f020060

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_d

    const v0, 0x7f0b0072

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0019

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f020061

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget-wide v6, v1, Lcom/estrongs/android/pop/view/utils/v;->u:J

    invoke-static {v6, v7}, Lcom/estrongs/fs/c/d;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget-wide v6, v1, Lcom/estrongs/android/pop/view/utils/v;->t:J

    invoke-static {v6, v7}, Lcom/estrongs/fs/c/d;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget-wide v0, v0, Lcom/estrongs/android/pop/view/utils/v;->t:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_5
    const/16 v1, 0x3e8

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0116

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_e
    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget-wide v0, v0, Lcom/estrongs/android/pop/view/utils/v;->u:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v0, v6

    iget-object v2, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget-wide v6, v2, Lcom/estrongs/android/pop/view/utils/v;->t:J

    div-long/2addr v0, v6

    long-to-int v0, v0

    goto :goto_5
.end method

.method private b(I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const v1, 0x1e249

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->k:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a()V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->f:I

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->b()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/view/utils/n;->a(Lcom/estrongs/android/pop/view/utils/v;I)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->g:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->b()V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p1, Lcom/estrongs/android/util/x;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/v;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const v0, 0x7f080324

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/v;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/estrongs/android/util/x;

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->g:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->b()V

    goto :goto_0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/estrongs/android/util/x;

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->g:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->b()V

    goto :goto_0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/estrongs/android/util/x;

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->g:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->b()V

    goto :goto_0
.end method

.method public e(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/estrongs/android/util/x;

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->g:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public f(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/estrongs/android/util/x;

    iget-object v0, p1, Lcom/estrongs/android/util/x;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->e:Lcom/estrongs/android/pop/app/hu;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/hu;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/v;->m:[Lcom/estrongs/android/util/x;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/estrongs/android/util/aw;->a([Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/v;->m:[Lcom/estrongs/android/util/x;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "position"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->f:I

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/utils/n;->d()[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    array-length v1, v0

    iget v2, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->f:I

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->f:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    const v0, 0x7f0300a9

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->setContentView(I)V

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->b:Lcom/estrongs/android/ui/theme/al;

    const v0, 0x7f08031d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->c:Landroid/view/View;

    const v0, 0x7f08031e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/estrongs/android/pop/app/hp;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/hp;-><init>(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080320

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a:Landroid/widget/ProgressBar;

    const v0, 0x7f080238

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->i:Landroid/widget/Gallery;

    new-instance v0, Lcom/estrongs/android/pop/app/hu;

    invoke-direct {v0, p0, p0}, Lcom/estrongs/android/pop/app/hu;-><init>(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->e:Lcom/estrongs/android/pop/app/hu;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->i:Landroid/widget/Gallery;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->e:Lcom/estrongs/android/pop/app/hu;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->i:Landroid/widget/Gallery;

    new-instance v1, Lcom/estrongs/android/pop/app/hq;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/hq;-><init>(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f080326

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->b:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/al;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f080324

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f08032e

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->b:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v3}, Lcom/estrongs/android/ui/theme/al;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v3, 0x7f080331

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->b:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v4}, Lcom/estrongs/android/ui/theme/al;->h()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v4, 0x7f08032d

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f08032f

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f080330

    invoke-virtual {p0, v6}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->b:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v7}, Lcom/estrongs/android/ui/theme/al;->h()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->b:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v4}, Lcom/estrongs/android/ui/theme/al;->h()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->b:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v4}, Lcom/estrongs/android/ui/theme/al;->h()I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget-object v4, v4, Lcom/estrongs/android/pop/view/utils/v;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/v;->i:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/v;->s:Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/v;->h:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->d:Lcom/estrongs/android/pop/view/utils/v;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/utils/n;->d(Lcom/estrongs/android/pop/view/utils/v;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    const v0, 0x7f020096

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const v0, 0x7f08032b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->b:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/al;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/utils/n;->a(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->h:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->b()V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->finish()V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->i:Landroid/widget/Gallery;

    new-instance v1, Lcom/estrongs/android/pop/app/hr;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/hr;-><init>(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/utils/n;->a(Landroid/os/Handler;)Landroid/os/Handler;

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onResume()V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
