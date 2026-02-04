.class Lcom/estrongs/android/ui/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/c;->a:Lcom/estrongs/android/ui/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/c;->a:Lcom/estrongs/android/ui/b/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/a;->a(Lcom/estrongs/android/ui/b/a;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/c;->a:Lcom/estrongs/android/ui/b/a;

    iget-object v1, v1, Lcom/estrongs/android/ui/b/a;->a:Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/b/c;->c()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/c;->a(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;)V

    return-void
.end method
