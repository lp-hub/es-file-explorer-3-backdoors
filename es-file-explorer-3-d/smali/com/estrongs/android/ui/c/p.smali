.class Lcom/estrongs/android/ui/c/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/estrongs/android/ui/c/l;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/l;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/p;->b:Lcom/estrongs/android/ui/c/l;

    iput-object p2, p0, Lcom/estrongs/android/ui/c/p;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/p;->b:Lcom/estrongs/android/ui/c/l;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/l;->a(Lcom/estrongs/android/ui/c/l;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/p;->b:Lcom/estrongs/android/ui/c/l;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/c/l;->a(Lcom/estrongs/android/ui/c/l;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/p;->a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;)Lcom/estrongs/android/ui/b/ag;

    :cond_0
    return-void
.end method
