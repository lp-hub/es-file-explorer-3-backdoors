.class Lcom/estrongs/android/pop/app/by;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/bx;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/bx;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/by;->a:Lcom/estrongs/android/pop/app/bx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/by;->a:Lcom/estrongs/android/pop/app/bx;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/bx;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/by;->a:Lcom/estrongs/android/pop/app/bx;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/bx;->f:Lcom/estrongs/android/pop/app/bw;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/bw;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/ImageCommentActivity;->a:Lcom/estrongs/android/pop/spfs/SPFileInfo;

    iget-object v1, v1, Lcom/estrongs/android/pop/spfs/SPFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/by;->a:Lcom/estrongs/android/pop/app/bx;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/bx;->f:Lcom/estrongs/android/pop/app/bw;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/bw;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->a:Lcom/estrongs/android/pop/spfs/SPFileInfo;

    iget-wide v0, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->lastModifiedTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/by;->a:Lcom/estrongs/android/pop/app/bx;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/bx;->f:Lcom/estrongs/android/pop/app/bw;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/bw;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->a:Lcom/estrongs/android/pop/spfs/SPFileInfo;

    iget-wide v0, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->lastModifiedTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/by;->a:Lcom/estrongs/android/pop/app/bx;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/bx;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/by;->a:Lcom/estrongs/android/pop/app/bx;

    iget-object v3, v3, Lcom/estrongs/android/pop/app/bx;->f:Lcom/estrongs/android/pop/app/bw;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/bw;->a(Lcom/estrongs/android/pop/app/bw;)Lcom/estrongs/android/util/an;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Lcom/estrongs/android/util/an;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/by;->a:Lcom/estrongs/android/pop/app/bx;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/bx;->f:Lcom/estrongs/android/pop/app/bw;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/bw;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    const v1, 0x7f08010b

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/by;->a:Lcom/estrongs/android/pop/app/bx;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/bx;->f:Lcom/estrongs/android/pop/app/bw;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/bw;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/ImageCommentActivity;->a:Lcom/estrongs/android/pop/spfs/SPFileInfo;

    iget-object v1, v1, Lcom/estrongs/android/pop/spfs/SPFileInfo;->ownerUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/by;->a:Lcom/estrongs/android/pop/app/bx;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/bx;->f:Lcom/estrongs/android/pop/app/bw;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/bw;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->a:Lcom/estrongs/android/pop/spfs/SPFileInfo;

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->description:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, ""

    iget-object v1, p0, Lcom/estrongs/android/pop/app/by;->a:Lcom/estrongs/android/pop/app/bx;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/bx;->f:Lcom/estrongs/android/pop/app/bw;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/bw;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/ImageCommentActivity;->a:Lcom/estrongs/android/pop/spfs/SPFileInfo;

    iget-object v1, v1, Lcom/estrongs/android/pop/spfs/SPFileInfo;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/by;->a:Lcom/estrongs/android/pop/app/bx;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/bx;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/by;->a:Lcom/estrongs/android/pop/app/bx;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/bx;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/by;->a:Lcom/estrongs/android/pop/app/bx;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/bx;->f:Lcom/estrongs/android/pop/app/bw;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/bw;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/ImageCommentActivity;->a:Lcom/estrongs/android/pop/spfs/SPFileInfo;

    iget-object v1, v1, Lcom/estrongs/android/pop/spfs/SPFileInfo;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/by;->a:Lcom/estrongs/android/pop/app/bx;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/bx;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/by;->a:Lcom/estrongs/android/pop/app/bx;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/bx;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
