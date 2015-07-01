helloworld:
    cmd.run:
        - name: echo 'hello {{pillar['hello']}}!'
