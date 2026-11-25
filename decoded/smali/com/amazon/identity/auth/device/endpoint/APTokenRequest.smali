.class public interface abstract Lcom/amazon/identity/auth/device/endpoint/APTokenRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/identity/auth/device/endpoint/RequestUrlBuilder;


# virtual methods
.method public abstract executeRequest()Lorg/apache/http/HttpResponse;
.end method

.method public abstract getHeaders()[Lorg/apache/http/Header;
.end method

.method public abstract getHost(Landroid/os/Bundle;)Ljava/lang/String;
.end method

.method public abstract getPostParameters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVerbAsString()Ljava/lang/String;
.end method

.method public abstract initializeHeaders()V
.end method

.method public abstract initializeHttp()V
.end method

.method public abstract initializePostParams()V
.end method

.method public abstract initializeUserAgent()V
.end method

.method public abstract postExecute(Lorg/apache/http/HttpResponse;)V
.end method

.method public abstract preExecute()V
.end method

.method public abstract setSocketTimeout(I)V
.end method

.method public abstract submit()Lcom/amazon/identity/auth/device/endpoint/TokenResponse;
.end method
