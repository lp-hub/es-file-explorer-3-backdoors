.class Lcom/estrongs/android/ui/b/bq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/estrongs/android/ui/b/bk;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/bk;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/bq;->c:Lcom/estrongs/android/ui/b/bk;

    iput-object p2, p0, Lcom/estrongs/android/ui/b/bq;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/estrongs/android/ui/b/bq;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/b/bq;->c:Lcom/estrongs/android/ui/b/bk;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/bk;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/bq;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/bq;->c:Lcom/estrongs/android/ui/b/bk;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/bq;->c:Lcom/estrongs/android/ui/b/bk;

    iget-object v1, v1, Lcom/estrongs/android/ui/b/bk;->a:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/estrongs/android/ui/b/bq;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/ui/b/bk;->a(Lcom/estrongs/android/ui/b/bk;Landroid/widget/TextView;J)V

    return-void
.end method
