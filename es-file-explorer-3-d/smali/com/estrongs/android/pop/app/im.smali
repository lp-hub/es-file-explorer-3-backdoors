.class Lcom/estrongs/android/pop/app/im;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/il;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/il;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/im;->a:Lcom/estrongs/android/pop/app/il;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/im;->a:Lcom/estrongs/android/pop/app/il;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/il;->c:Lcom/estrongs/android/pop/app/ShowDialogActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->finish()V

    return-void
.end method
