.class Lcom/estrongs/android/pop/app/az;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/GestureManageActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/GestureManageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/az;->a:Lcom/estrongs/android/pop/app/GestureManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/b/eo;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/az;->a:Lcom/estrongs/android/pop/app/GestureManageActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/b/eo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/eo;->b()V

    new-instance v1, Lcom/estrongs/android/pop/app/ba;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/pop/app/ba;-><init>(Lcom/estrongs/android/pop/app/az;Lcom/estrongs/android/ui/b/eo;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/eo;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v0, 0x0

    return v0
.end method
