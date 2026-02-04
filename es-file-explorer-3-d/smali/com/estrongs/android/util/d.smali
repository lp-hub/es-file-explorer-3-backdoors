.class Lcom/estrongs/android/util/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/util/b;


# direct methods
.method constructor <init>(Lcom/estrongs/android/util/b;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/util/d;->a:Lcom/estrongs/android/util/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ok clicked - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/util/d;->a:Lcom/estrongs/android/util/b;

    invoke-static {v2}, Lcom/estrongs/android/util/b;->b(Lcom/estrongs/android/util/b;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/util/d;->a:Lcom/estrongs/android/util/b;

    invoke-static {v0}, Lcom/estrongs/android/util/b;->c(Lcom/estrongs/android/util/b;)Lcom/estrongs/android/util/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/util/d;->a:Lcom/estrongs/android/util/b;

    invoke-static {v0}, Lcom/estrongs/android/util/b;->c(Lcom/estrongs/android/util/b;)Lcom/estrongs/android/util/f;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/util/g;->a:[Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/util/d;->a:Lcom/estrongs/android/util/b;

    invoke-static {v2}, Lcom/estrongs/android/util/b;->b(Lcom/estrongs/android/util/b;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/estrongs/android/util/d;->a:Lcom/estrongs/android/util/b;

    invoke-static {v2}, Lcom/estrongs/android/util/b;->d(Lcom/estrongs/android/util/b;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/util/d;->a:Lcom/estrongs/android/util/b;

    invoke-static {v3}, Lcom/estrongs/android/util/b;->b(Lcom/estrongs/android/util/b;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/estrongs/android/util/b;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/util/d;->a:Lcom/estrongs/android/util/b;

    invoke-static {v3}, Lcom/estrongs/android/util/b;->b(Lcom/estrongs/android/util/b;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/estrongs/android/util/f;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
