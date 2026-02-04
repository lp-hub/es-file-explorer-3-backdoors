.class Lcom/estrongs/android/view/bg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/view/ar;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ar;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/bg;->b:Lcom/estrongs/android/view/ar;

    iput p2, p0, Lcom/estrongs/android/view/bg;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/bg;->b:Lcom/estrongs/android/view/ar;

    iget-object v0, v0, Lcom/estrongs/android/view/ar;->g:Lcom/estrongs/android/widget/HeaderGridView;

    iget v1, p0, Lcom/estrongs/android/view/bg;->a:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setSelection(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/bg;->b:Lcom/estrongs/android/view/ar;

    iget-object v0, v0, Lcom/estrongs/android/view/ar;->g:Lcom/estrongs/android/widget/HeaderGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setSelected(Z)V

    return-void
.end method
