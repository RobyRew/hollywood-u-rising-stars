.class final Lcom/crashlytics/android/c/bp;
.super Lorg/json/JSONObject;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/crashlytics/android/c/cw;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/c/cw;)V
    .locals 2

    .prologue
    .line 147
    iput-object p1, p0, Lcom/crashlytics/android/c/bp;->a:Lcom/crashlytics/android/c/cw;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 148
    const-string/jumbo v0, "userId"

    iget-object v1, p0, Lcom/crashlytics/android/c/bp;->a:Lcom/crashlytics/android/c/cw;

    iget-object v1, v1, Lcom/crashlytics/android/c/cw;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/c/bp;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string/jumbo v0, "userName"

    iget-object v1, p0, Lcom/crashlytics/android/c/bp;->a:Lcom/crashlytics/android/c/cw;

    iget-object v1, v1, Lcom/crashlytics/android/c/cw;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/c/bp;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string/jumbo v0, "userEmail"

    iget-object v1, p0, Lcom/crashlytics/android/c/bp;->a:Lcom/crashlytics/android/c/cw;

    iget-object v1, v1, Lcom/crashlytics/android/c/cw;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/c/bp;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    return-void
.end method
