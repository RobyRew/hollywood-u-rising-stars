.class public final Lcom/helpshift/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected static a([Ljava/lang/String;II)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 8
    sub-int v0, p2, p1

    .line 9
    new-array v1, v0, [Ljava/lang/String;

    .line 10
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    return-object v1
.end method
