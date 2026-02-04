.class public Lcom/baidu/sapi2/log/Logger;
.super Ljava/lang/Object;


# static fields
.field protected static final TAG:Ljava/lang/String; = "Sapi"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static buildMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/baidu/sapi2/log/Logger;->getDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Sapi"

    invoke-static {p0}, Lcom/baidu/sapi2/log/Logger;->buildMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/baidu/sapi2/log/Logger;->getDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Sapi"

    invoke-static {p0}, Lcom/baidu/sapi2/log/Logger;->buildMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/baidu/sapi2/log/Logger;->getDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Sapi"

    invoke-static {p0}, Lcom/baidu/sapi2/log/Logger;->buildMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/baidu/sapi2/log/Logger;->getDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Sapi"

    invoke-static {p0}, Lcom/baidu/sapi2/log/Logger;->buildMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private static getDebuggable()Z
    .locals 1

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiHelper;->isDebuggable()Z

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/baidu/sapi2/log/Logger;->getDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Sapi"

    invoke-static {p0}, Lcom/baidu/sapi2/log/Logger;->buildMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/baidu/sapi2/log/Logger;->getDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Sapi"

    invoke-static {p0}, Lcom/baidu/sapi2/log/Logger;->buildMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/baidu/sapi2/log/Logger;->getDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Sapi"

    invoke-static {p0}, Lcom/baidu/sapi2/log/Logger;->buildMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/baidu/sapi2/log/Logger;->getDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Sapi"

    invoke-static {p0}, Lcom/baidu/sapi2/log/Logger;->buildMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/baidu/sapi2/log/Logger;->getDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Sapi"

    invoke-static {p0}, Lcom/baidu/sapi2/log/Logger;->buildMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/baidu/sapi2/log/Logger;->getDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Sapi"

    invoke-static {p0}, Lcom/baidu/sapi2/log/Logger;->buildMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/baidu/sapi2/log/Logger;->getDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Sapi"

    const-string v1, ""

    invoke-static {v1}, Lcom/baidu/sapi2/log/Logger;->buildMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
