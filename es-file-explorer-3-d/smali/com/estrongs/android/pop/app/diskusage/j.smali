.class Lcom/estrongs/android/pop/app/diskusage/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/diskusage/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/diskusage/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/e;->h(Lcom/estrongs/android/pop/app/diskusage/e;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/e;->x(Lcom/estrongs/android/pop/app/diskusage/e;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b00f3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/j;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Lcom/estrongs/android/pop/app/diskusage/e;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/diskusage/e;->b(Lcom/estrongs/android/pop/app/diskusage/e;J)J

    return-void
.end method
