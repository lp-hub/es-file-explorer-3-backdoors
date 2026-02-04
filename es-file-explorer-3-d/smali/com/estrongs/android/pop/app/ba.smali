.class Lcom/estrongs/android/pop/app/ba;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/eo;

.field final synthetic b:Lcom/estrongs/android/pop/app/az;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/az;Lcom/estrongs/android/ui/b/eo;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ba;->b:Lcom/estrongs/android/pop/app/az;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/ba;->a:Lcom/estrongs/android/ui/b/eo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ba;->a:Lcom/estrongs/android/ui/b/eo;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/eo;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/estrongs/android/ui/b/cd;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ba;->b:Lcom/estrongs/android/pop/app/az;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/az;->a:Lcom/estrongs/android/pop/app/GestureManageActivity;

    invoke-direct {v1, v2, v0}, Lcom/estrongs/android/ui/b/cd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/cd;->a()V

    new-instance v0, Lcom/estrongs/android/pop/app/bb;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/bb;-><init>(Lcom/estrongs/android/pop/app/ba;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/b/cd;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method
