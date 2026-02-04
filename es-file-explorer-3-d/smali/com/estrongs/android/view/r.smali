.class Lcom/estrongs/android/view/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/n;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/n;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/r;->a:Lcom/estrongs/android/view/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/r;->a:Lcom/estrongs/android/view/n;

    invoke-static {v0}, Lcom/estrongs/android/view/n;->a(Lcom/estrongs/android/view/n;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/android/pop/q;->e(Z)V

    return-void
.end method
