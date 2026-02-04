.class Lcom/estrongs/android/pop/view/ce;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Ljava/lang/Thread;

.field final synthetic c:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/widget/CheckBox;Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ce;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/ce;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/estrongs/android/pop/view/ce;->b:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ce;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ce;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/q;->q(Z)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/pop/FexApplication;->b:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ce;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
