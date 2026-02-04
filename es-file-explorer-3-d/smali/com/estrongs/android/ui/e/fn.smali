.class final Lcom/estrongs/android/ui/e/fn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/ag;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/estrongs/fs/g;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/ag;Landroid/content/Context;Lcom/estrongs/fs/g;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/fn;->a:Lcom/estrongs/android/ui/b/ag;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/fn;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/estrongs/android/ui/e/fn;->c:Lcom/estrongs/fs/g;

    iput-object p4, p0, Lcom/estrongs/android/ui/e/fn;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/fn;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/fn;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/fn;->c:Lcom/estrongs/fs/g;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/fn;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/e/fk;->a(Landroid/content/Context;Lcom/estrongs/fs/g;Ljava/lang/String;)V

    return-void
.end method
