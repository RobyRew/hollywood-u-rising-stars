.class public interface abstract Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract authorize(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract clearAuthorizationState(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract getMetaData()Landroid/os/Bundle;
.end method

.method public abstract getToken(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
.end method
