.class Lcom/estrongs/android/pop/app/compress/ab;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/z;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/z;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/z;->g(Lcom/estrongs/android/pop/app/compress/z;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/z;->p(Lcom/estrongs/android/pop/app/compress/z;)Lcom/estrongs/io/archive/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/io/archive/d;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/z;->l(Lcom/estrongs/android/pop/app/compress/z;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string v3, "zip"

    iget-object v4, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/compress/z;->i(Lcom/estrongs/android/pop/app/compress/z;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/compress/z;->o(Lcom/estrongs/android/pop/app/compress/z;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/compress/z;->m(Lcom/estrongs/android/pop/app/compress/z;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "compress_level"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v3, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/compress/z;->o(Lcom/estrongs/android/pop/app/compress/z;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/compress/z;->m(Lcom/estrongs/android/pop/app/compress/z;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "compress_level"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v3, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/compress/z;->o(Lcom/estrongs/android/pop/app/compress/z;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/compress/z;->m(Lcom/estrongs/android/pop/app/compress/z;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "compress_level"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v3, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/compress/z;->o(Lcom/estrongs/android/pop/app/compress/z;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/compress/z;->m(Lcom/estrongs/android/pop/app/compress/z;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "compress_level"

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    const-string v3, "password"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    new-instance v3, Lcom/estrongs/io/archive/aeszip/k;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/compress/z;->a(Lcom/estrongs/android/pop/app/compress/z;)Lcom/estrongs/io/a/a/b;

    move-result-object v4

    invoke-direct {v3, v0, v4, v2}, Lcom/estrongs/io/archive/aeszip/k;-><init>(Ljava/lang/String;Lcom/estrongs/io/a/d;Ljava/util/Map;)V

    iput-object v3, v1, Lcom/estrongs/android/pop/app/compress/z;->b:Lcom/estrongs/io/archive/i;

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/z;->b:Lcom/estrongs/io/archive/i;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    new-instance v3, Lcom/estrongs/io/archive/i;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/compress/z;->a(Lcom/estrongs/android/pop/app/compress/z;)Lcom/estrongs/io/a/a/b;

    move-result-object v4

    invoke-direct {v3, v0, v4, v2}, Lcom/estrongs/io/archive/i;-><init>(Ljava/lang/String;Lcom/estrongs/io/a/d;Ljava/util/Map;)V

    iput-object v3, v1, Lcom/estrongs/android/pop/app/compress/z;->b:Lcom/estrongs/io/archive/i;

    :cond_5
    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/z;->b:Lcom/estrongs/io/archive/i;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/z;->q(Lcom/estrongs/android/pop/app/compress/z;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/io/archive/i;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/z;->a(Lcom/estrongs/android/pop/app/compress/z;)Lcom/estrongs/io/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/io/a/a/b;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/z;->p(Lcom/estrongs/android/pop/app/compress/z;)Lcom/estrongs/io/archive/d;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/z;->p(Lcom/estrongs/android/pop/app/compress/z;)Lcom/estrongs/io/archive/d;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/estrongs/io/archive/d;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/d;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/z;->a()V

    :goto_1
    return-void

    :cond_6
    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/z;->p(Lcom/estrongs/android/pop/app/compress/z;)Lcom/estrongs/io/archive/d;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/z;->p(Lcom/estrongs/android/pop/app/compress/z;)Lcom/estrongs/io/archive/d;

    move-result-object v2

    const/4 v3, 0x1

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/estrongs/io/archive/d;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/io/archive/d;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/z;->p(Lcom/estrongs/android/pop/app/compress/z;)Lcom/estrongs/io/archive/d;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/z;->p(Lcom/estrongs/android/pop/app/compress/z;)Lcom/estrongs/io/archive/d;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/estrongs/io/archive/d;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/io/archive/d;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/z;->a()V

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/z;->p(Lcom/estrongs/android/pop/app/compress/z;)Lcom/estrongs/io/archive/d;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/z;->p(Lcom/estrongs/android/pop/app/compress/z;)Lcom/estrongs/io/archive/d;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/estrongs/io/archive/d;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/io/archive/d;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/z;->a()V

    goto :goto_1

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/z;->p(Lcom/estrongs/android/pop/app/compress/z;)Lcom/estrongs/io/archive/d;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/z;->p(Lcom/estrongs/android/pop/app/compress/z;)Lcom/estrongs/io/archive/d;

    move-result-object v2

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/estrongs/io/archive/d;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/io/archive/d;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ab;->a:Lcom/estrongs/android/pop/app/compress/z;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/z;->a()V

    goto/16 :goto_1
.end method
