.class Lcom/estrongs/android/view/cj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/h;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/ch;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ch;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/cj;->a:Lcom/estrongs/android/view/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;Lcom/estrongs/a/a/i;)V
    .locals 5

    const-wide/16 v3, 0x0

    iget v0, p2, Lcom/estrongs/a/a/i;->i:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/cj;->a:Lcom/estrongs/android/view/ch;

    iget-object v1, p0, Lcom/estrongs/android/view/cj;->a:Lcom/estrongs/android/view/ch;

    iget-object v1, v1, Lcom/estrongs/android/view/ch;->ad:Landroid/app/Activity;

    const v2, 0x7f0b0072

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ch;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p2, Lcom/estrongs/a/a/i;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/cj;->a:Lcom/estrongs/android/view/ch;

    iget-object v1, p0, Lcom/estrongs/android/view/cj;->a:Lcom/estrongs/android/view/ch;

    iget-object v1, v1, Lcom/estrongs/android/view/ch;->ad:Landroid/app/Activity;

    const v2, 0x7f0b02f6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ch;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p2, Lcom/estrongs/a/a/i;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/view/cj;->a:Lcom/estrongs/android/view/ch;

    const-string v1, "Deleting the source ..."

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ch;->a(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/estrongs/a/a/i;->e:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/cj;->a:Lcom/estrongs/android/view/ch;

    iget-wide v1, p2, Lcom/estrongs/a/a/i;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/view/ch;->a(J)V

    :cond_3
    iget-wide v0, p2, Lcom/estrongs/a/a/i;->f:J

    cmp-long v0, v0, v3

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cj;->a:Lcom/estrongs/android/view/ch;

    iget-wide v1, p2, Lcom/estrongs/a/a/i;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/view/ch;->b(J)V

    goto :goto_0

    :cond_4
    iget-boolean v0, p2, Lcom/estrongs/a/a/i;->l:Z

    if-eqz v0, :cond_a

    iget-wide v0, p2, Lcom/estrongs/a/a/i;->e:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/view/cj;->a:Lcom/estrongs/android/view/ch;

    iget-wide v1, p2, Lcom/estrongs/a/a/i;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/view/ch;->a(J)V

    iget-wide v0, p2, Lcom/estrongs/a/a/i;->f:J

    cmp-long v0, v0, v3

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/view/cj;->a:Lcom/estrongs/android/view/ch;

    iget-wide v1, p2, Lcom/estrongs/a/a/i;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/view/ch;->b(J)V

    :cond_5
    :goto_1
    iget v0, p2, Lcom/estrongs/a/a/i;->b:I

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/view/cj;->a:Lcom/estrongs/android/view/ch;

    iget v1, p2, Lcom/estrongs/a/a/i;->b:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ch;->a(I)V

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/view/cj;->a:Lcom/estrongs/android/view/ch;

    invoke-static {v0}, Lcom/estrongs/android/view/ch;->g(Lcom/estrongs/android/view/ch;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/estrongs/a/a/i;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cj;->a:Lcom/estrongs/android/view/ch;

    iget-object v1, p0, Lcom/estrongs/android/view/cj;->a:Lcom/estrongs/android/view/ch;

    invoke-virtual {v1, p2}, Lcom/estrongs/android/view/ch;->a(Lcom/estrongs/a/a/i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ch;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-wide v0, p2, Lcom/estrongs/a/a/i;->g:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_9

    iget-wide v0, p2, Lcom/estrongs/a/a/i;->g:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/view/cj;->a:Lcom/estrongs/android/view/ch;

    iget-wide v1, p2, Lcom/estrongs/a/a/i;->g:J

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/view/ch;->c(J)V

    :cond_8
    iget-wide v0, p2, Lcom/estrongs/a/a/i;->h:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/view/cj;->a:Lcom/estrongs/android/view/ch;

    iget-wide v1, p2, Lcom/estrongs/a/a/i;->h:J

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/view/ch;->d(J)V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/view/cj;->a:Lcom/estrongs/android/view/ch;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ch;->b()V

    goto :goto_1

    :cond_a
    iget-wide v0, p2, Lcom/estrongs/a/a/i;->c:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/view/cj;->a:Lcom/estrongs/android/view/ch;

    iget-wide v1, p2, Lcom/estrongs/a/a/i;->c:J

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/view/ch;->a(J)V

    iget-wide v0, p2, Lcom/estrongs/a/a/i;->d:J

    cmp-long v0, v0, v3

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/view/cj;->a:Lcom/estrongs/android/view/ch;

    iget-wide v1, p2, Lcom/estrongs/a/a/i;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/view/ch;->b(J)V

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/estrongs/android/view/cj;->a:Lcom/estrongs/android/view/ch;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ch;->b()V

    goto :goto_1
.end method
