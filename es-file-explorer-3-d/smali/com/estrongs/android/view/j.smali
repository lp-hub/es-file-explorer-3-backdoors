.class Lcom/estrongs/android/view/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/j;->a:Lcom/estrongs/android/view/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/j;->a:Lcom/estrongs/android/view/e;

    invoke-static {v0}, Lcom/estrongs/android/view/e;->g(Lcom/estrongs/android/view/e;)Lcom/estrongs/android/pop/app/compress/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/as;->dismiss()V

    return-void
.end method
