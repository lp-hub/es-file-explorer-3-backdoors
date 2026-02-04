.class Lcom/estrongs/android/pop/app/bb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ba;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ba;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bb;->a:Lcom/estrongs/android/pop/app/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bb;->a:Lcom/estrongs/android/pop/app/ba;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ba;->b:Lcom/estrongs/android/pop/app/az;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/az;->a:Lcom/estrongs/android/pop/app/GestureManageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->a(Lcom/estrongs/android/pop/app/GestureManageActivity;)Lcom/estrongs/android/ui/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/o;->notifyDataSetChanged()V

    return-void
.end method
