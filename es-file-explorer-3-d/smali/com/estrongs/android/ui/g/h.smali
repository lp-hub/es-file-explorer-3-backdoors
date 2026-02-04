.class Lcom/estrongs/android/ui/g/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/g/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/g/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/g/h;->a:Lcom/estrongs/android/ui/g/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/g/h;->a:Lcom/estrongs/android/ui/g/f;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/g/f;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/g/h;->a:Lcom/estrongs/android/ui/g/f;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/g/f;->a()V

    return-void
.end method
