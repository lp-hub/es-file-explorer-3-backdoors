.class Lcom/estrongs/android/pop/app/hz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/ag;

.field final synthetic b:Lcom/estrongs/android/pop/app/ShowDialogActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;Lcom/estrongs/android/ui/b/ag;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/hz;->b:Lcom/estrongs/android/pop/app/ShowDialogActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/hz;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/hz;->a:Lcom/estrongs/android/ui/b/ag;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ag;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance v0, Lcom/estrongs/android/ui/pcs/x;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/hz;->b:Lcom/estrongs/android/pop/app/ShowDialogActivity;

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/pcs/aw;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/ui/pcs/x;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/x;->a()V

    new-instance v1, Lcom/estrongs/android/pop/app/ia;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ia;-><init>(Lcom/estrongs/android/pop/app/hz;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/x;->a(Lcom/estrongs/android/ui/pcs/ag;)V

    new-instance v1, Lcom/estrongs/android/pop/app/ib;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ib;-><init>(Lcom/estrongs/android/pop/app/hz;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/x;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
