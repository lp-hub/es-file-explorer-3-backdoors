.class Lcom/estrongs/android/pop/app/diskusage/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/diskusage/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/diskusage/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/e;->v(Lcom/estrongs/android/pop/app/diskusage/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/e;->D(Lcom/estrongs/android/pop/app/diskusage/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/e;->b(Lcom/estrongs/android/pop/app/diskusage/e;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/e;->i(Lcom/estrongs/android/pop/app/diskusage/e;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/l;->a:Lcom/estrongs/android/pop/app/diskusage/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/e;->a(Lcom/estrongs/android/pop/app/diskusage/e;Lcom/estrongs/android/widget/az;)Lcom/estrongs/android/widget/az;

    goto :goto_0
.end method
