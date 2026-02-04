.class Lcom/estrongs/android/ui/pcs/cj;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/bt;

.field private b:I

.field private c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/bt;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Lcom/estrongs/android/ui/pcs/cj;->b:I

    new-instance v0, Lcom/estrongs/android/ui/pcs/ck;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/pcs/ck;-><init>(Lcom/estrongs/android/ui/pcs/cj;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/cj;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/cj;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cj;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private a()V
    .locals 1

    const/16 v0, 0x3c

    iput v0, p0, Lcom/estrongs/android/ui/pcs/cj;->b:I

    return-void
.end method

.method private a(ILjava/lang/Object;)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/String;

    move-object v0, p2

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    const v1, 0x7f0b046d

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/bt;->a(Lcom/estrongs/android/ui/pcs/bt;I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/pcs/bt;->d(Lcom/estrongs/android/ui/pcs/bt;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    const v2, 0x7f0b0477

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/pcs/bt;->a(Lcom/estrongs/android/ui/pcs/bt;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/bt;->d(Lcom/estrongs/android/ui/pcs/bt;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bt;->b(Lcom/estrongs/android/ui/pcs/bt;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/bt;->k(Lcom/estrongs/android/ui/pcs/bt;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bt;->b(Lcom/estrongs/android/ui/pcs/bt;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    :cond_2
    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/cj;->a()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/cj;->b()V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bt;->d(Lcom/estrongs/android/ui/pcs/bt;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/q;->f(J)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bt;->d(Lcom/estrongs/android/ui/pcs/bt;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/bt;->h(Lcom/estrongs/android/ui/pcs/bt;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/bt;->c(Lcom/estrongs/android/ui/pcs/bt;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/q;->A(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bt;->d(Lcom/estrongs/android/ui/pcs/bt;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/bt;->d(Lcom/estrongs/android/ui/pcs/bt;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/q;->aC()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/q;->b(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bt;->d(Lcom/estrongs/android/ui/pcs/bt;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->aC()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bt;->d(Lcom/estrongs/android/ui/pcs/bt;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/q;->A(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/bt;->a(Lcom/estrongs/android/ui/pcs/bt;Z)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/bt;->a(Lcom/estrongs/android/ui/pcs/bt;Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    const v2, 0x7f0b046e

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/pcs/bt;->a(Lcom/estrongs/android/ui/pcs/bt;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/bt;->d(Lcom/estrongs/android/ui/pcs/bt;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/cj;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/pcs/cj;->a(ILjava/lang/Object;)V

    return-void
.end method

.method private b()V
    .locals 6

    const/4 v5, 0x3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bt;->m(Lcom/estrongs/android/ui/pcs/bt;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0802ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/cj;->c:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget v1, p0, Lcom/estrongs/android/ui/pcs/cj;->b:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/bt;->n(Lcom/estrongs/android/ui/pcs/bt;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/cj;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/cj;->c:Landroid/os/Handler;

    const/4 v3, 0x0

    iget v4, p0, Lcom/estrongs/android/ui/pcs/cj;->b:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/estrongs/android/ui/pcs/cj;->b:I

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/bt;->d(Lcom/estrongs/android/ui/pcs/bt;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b04bc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/android/ui/pcs/cj;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/bt;->d(Lcom/estrongs/android/ui/pcs/bt;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b018f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/bt;->o(Lcom/estrongs/android/ui/pcs/bt;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/bt;->d(Lcom/estrongs/android/ui/pcs/bt;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b04bd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private b(ILjava/lang/Object;)V
    .locals 7

    const v6, 0x7f0b04e4

    const/4 v5, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_6

    check-cast p2, Ljava/lang/String;

    move-object v0, p2

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    const v1, 0x7f0b046d

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/bt;->a(Lcom/estrongs/android/ui/pcs/bt;I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/pcs/bt;->d(Lcom/estrongs/android/ui/pcs/bt;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bt;->l(Lcom/estrongs/android/ui/pcs/bt;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f080101

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    const v4, 0x7f0b0092

    invoke-static {v3, v4}, Lcom/estrongs/android/ui/pcs/bt;->a(Lcom/estrongs/android/ui/pcs/bt;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v3, v6}, Lcom/estrongs/android/ui/pcs/bt;->a(Lcom/estrongs/android/ui/pcs/bt;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v3}, Lcom/estrongs/android/ui/pcs/bt;->h(Lcom/estrongs/android/ui/pcs/bt;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    const v4, 0x7f0b0065

    invoke-static {v3, v4}, Lcom/estrongs/android/ui/pcs/bt;->a(Lcom/estrongs/android/ui/pcs/bt;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v3, v6}, Lcom/estrongs/android/ui/pcs/bt;->a(Lcom/estrongs/android/ui/pcs/bt;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v3}, Lcom/estrongs/android/ui/pcs/bt;->c(Lcom/estrongs/android/ui/pcs/bt;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    const v4, 0x7f0b04b7

    invoke-static {v3, v4}, Lcom/estrongs/android/ui/pcs/bt;->a(Lcom/estrongs/android/ui/pcs/bt;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bt;->b(Lcom/estrongs/android/ui/pcs/bt;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/bt;->m(Lcom/estrongs/android/ui/pcs/bt;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bt;->b(Lcom/estrongs/android/ui/pcs/bt;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    :cond_3
    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v5}, Lcom/estrongs/android/ui/pcs/aw;->a(I)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/aw;->a(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bt;->d(Lcom/estrongs/android/ui/pcs/bt;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/estrongs/android/pop/q;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bt;->d(Lcom/estrongs/android/ui/pcs/bt;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bt;->d(Lcom/estrongs/android/ui/pcs/bt;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/impl/i/b;->l(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->G()V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bt;->d(Lcom/estrongs/android/ui/pcs/bt;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->c()V

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bt;->d(Lcom/estrongs/android/ui/pcs/bt;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/q;->f(J)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bt;->d(Lcom/estrongs/android/ui/pcs/bt;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/q;->A(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cj;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bt;->d(Lcom/estrongs/android/ui/pcs/bt;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/estrongs/android/pop/q;->b(I)V

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "PCS_Upgrade_UV"

    const-string v2, "PCS_Upgrade_UV"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    move-object v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/cj;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/cj;->b()V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/cj;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/pcs/cj;->b(ILjava/lang/Object;)V

    return-void
.end method
