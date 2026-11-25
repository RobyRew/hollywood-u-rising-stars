.class Lcom/growmobile/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 991
    const/4 v0, 0x0

    sput-boolean v0, Lcom/growmobile/d;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1001
    sget-boolean v0, Lcom/growmobile/d;->a:Z

    if-eqz v0, :cond_0

    .line 1002
    const-string/jumbo v0, "GrowMobileSDK"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 996
    sput-boolean p0, Lcom/growmobile/d;->a:Z

    .line 997
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1008
    const-string/jumbo v0, "GrowMobileSDK"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1013
    sget-boolean v0, Lcom/growmobile/d;->a:Z

    if-eqz v0, :cond_0

    .line 1014
    const-string/jumbo v0, "GrowMobileSDK"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    :cond_0
    return-void
.end method
