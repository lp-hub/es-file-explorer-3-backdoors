.class public Lcom/baidu/sapi2/account/AccountException;
.super Ljava/lang/Exception;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private errMsg:Ljava/lang/String;

.field private errno:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/baidu/sapi2/account/AccountException;->errno:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/baidu/sapi2/account/AccountException;->errno:I

    iput-object p2, p0, Lcom/baidu/sapi2/account/AccountException;->errMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/baidu/sapi2/account/AccountException;->errMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountException;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getErrno()I
    .locals 1

    iget v0, p0, Lcom/baidu/sapi2/account/AccountException;->errno:I

    return v0
.end method

.method public setErrMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/account/AccountException;->errMsg:Ljava/lang/String;

    return-void
.end method

.method public setErrno(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/sapi2/account/AccountException;->errno:I

    return-void
.end method
