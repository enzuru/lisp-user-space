# syntax=docker/dockerfile:experimental
FROM metacall/guix:latest AS lisp-user-space

RUN apk add tmux git emacs
RUN git clone https://github.com/enzuru/.emacs.d.git /root/.emacs.d

#RUN --security=insecure sh -c '/entry-point.sh guix pull'
#RUN --security=insecure sh -c '/entry-point.sh guix install emacs'
#CMD ["tmux", "-2", "new-session", "/root/.guix-profile/bin/emacs"]

CMD ["tmux", "-2", "new-session", "emacs"]
