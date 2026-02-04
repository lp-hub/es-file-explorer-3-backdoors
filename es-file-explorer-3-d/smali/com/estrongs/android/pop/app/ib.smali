.class Lcom/estrongs/android/pop/app/ib;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/hz;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/hz;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ib;->a:Lcom/estrongs/android/pop/app/hz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ib;->a:Lcom/estrongs/android/pop/app/hz;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/hz;->b:Lcom/estrongs/android/pop/app/ShowDialogActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->finish()V

    return-void
.end method
