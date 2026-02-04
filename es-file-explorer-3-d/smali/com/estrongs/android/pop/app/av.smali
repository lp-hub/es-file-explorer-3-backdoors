.class Lcom/estrongs/android/pop/app/av;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/FileChooserActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/FileChooserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/av;->a:Lcom/estrongs/android/pop/app/FileChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/av;->a:Lcom/estrongs/android/pop/app/FileChooserActivity;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/app/FileChooserActivity;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/av;->a:Lcom/estrongs/android/pop/app/FileChooserActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->finish()V

    :cond_0
    return-void
.end method
