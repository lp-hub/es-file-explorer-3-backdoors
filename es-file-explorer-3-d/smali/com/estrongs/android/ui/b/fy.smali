.class Lcom/estrongs/android/ui/b/fy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/a/a;

.field final synthetic b:Lcom/estrongs/android/ui/b/fw;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/fw;Lcom/estrongs/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/fy;->b:Lcom/estrongs/android/ui/b/fw;

    iput-object p2, p0, Lcom/estrongs/android/ui/b/fy;->a:Lcom/estrongs/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fy;->b:Lcom/estrongs/android/ui/b/fw;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/fw;->a:Lcom/estrongs/android/ui/b/fr;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/fy;->a:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/fr;->b(Lcom/estrongs/a/p;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    move-object v4, v0

    check-cast v4, [Ljava/lang/Long;

    new-instance v0, Lcom/estrongs/android/ui/b/ev;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/fy;->b:Lcom/estrongs/android/ui/b/fw;

    iget-object v1, v1, Lcom/estrongs/android/ui/b/fw;->a:Lcom/estrongs/android/ui/b/fr;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/fr;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/ui/b/ev;-><init>(Landroid/content/Context;JJ)V

    iget-object v1, p0, Lcom/estrongs/android/ui/b/fy;->b:Lcom/estrongs/android/ui/b/fw;

    iget-object v1, v1, Lcom/estrongs/android/ui/b/fw;->a:Lcom/estrongs/android/ui/b/fr;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/fr;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0006

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/ev;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ev;->show()V

    return-void
.end method
